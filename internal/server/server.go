package server

import (
	"encoding/json"
	"errors"
	"fmt"
	"io/ioutil"
	"log"
	"net/http"

	"github.com/kml183/room-environment-monitor/internal/config"

	"gobot.io/x/gobot/drivers/i2c"

	googleiot "github.com/kml183/room-environment-monitor/internal/google-iot"
	"github.com/kml183/room-environment-monitor/internal/sensors"
)

const (
	// HTTPPort is the port to run the server on
	HTTPPort = "192.168.1.111:8080"
)

type server struct {
	SensorsService   sensors.Service
	GoogleIOTService googleiot.Service
	Logger           *log.Logger
	apiKey           string
}

// NewHTTPServer returns a instance of the http server
func NewHTTPServer(logger *log.Logger, tsl2561Driver *i2c.TSL2561Driver, ccs811Driver *i2c.CCS811Driver) error {

	// Create SSL Certs
	certs, err := config.GetSSLCerts()
	if err != nil {
		logger.Fatalf("Failed to fetch the ssl cert files > %s ", err.Error())
	}

	// Fetch Google IOT Config
	iotConfig := config.GetGoogleIOTConfig()

	// Setup Services and Server
	ss := sensors.NewSensorService(tsl2561Driver, ccs811Driver)
	gs := googleiot.NewGoogleIOTService(certs, iotConfig, logger)

	if err != nil {
		logger.Fatalf("Failed to setup google iot service", err.Error())
		return err
	}

	s := &server{
		SensorsService:   ss,
		GoogleIOTService: gs,
		Logger:           logger,
	}

	//Load The api key from file
	val, err := ioutil.ReadFile(config.APIKeyFile)
	if err != nil {
		logger.Fatalf("Failed to read api key file", err.Error())
		return err
	}

	s.apiKey = string(val)

	//Setup Handlers
	fs := http.FileServer(http.Dir("static"))
	http.Handle("/static/", http.StripPrefix("/static/", fs))
	http.HandleFunc("/get-sensor-data-snapshot", s.GetSensorDataSnapshotHandler)
	http.HandleFunc("/publish-sensor-data-snapshot", s.PublishSensorDataSnapshotHandler)

	//Start the http server
	fmt.Printf("Started HTTP handler on port %s \n", HTTPPort)
	if err := http.ListenAndServe(HTTPPort, nil); err != nil {
		return errors.New("Couldn't start http server")
	}

	return nil
}

// Handler is the main http handler for the room environment monitor app
func (s *server) GetSensorDataSnapshotHandler(wr http.ResponseWriter, r *http.Request) {

	ctx := r.Context()
	s.Logger.Printf("Request - calling handler: GetSensorDataSnapshotHandler")

	p := r.URL.Query().Get("api_key")
	if p != s.apiKey {
		s.Logger.Printf("Request - WARNING: api key \"%s\" does not match known key \"%s\"", p, s.apiKey)
		s.setResponse(wr, "api key is incorrect or was not passed", 403)
		return
	}

	d, err := s.SensorsService.FetchSensorData(ctx)
	if err != nil {
		s.Logger.Printf("Request - ERROR: failed to fetch sensor data > %s\n", err.Error())
		s.setResponse(wr, fmt.Sprintf("could't fetch the sensor data > %s", err.Error()), 500)
		return
	}

	md, err := json.Marshal(d)
	if err != nil {
		s.Logger.Printf("Request - ERROR: failed to marshal sensor data > %s \n", err.Error())
		s.setResponse(wr, fmt.Sprintf("couldn't marshal the data > %s", err.Error()), 500)
		return
	}

	s.Logger.Printf("Request - resulting data: %s", string(md))
	s.setResponse(wr, string(md), 200)
}

func (s *server) PublishSensorDataSnapshotHandler(wr http.ResponseWriter, r *http.Request) {

	ctx := r.Context()
	s.Logger.Printf("Request - calling handler: PublishSensorDataSnapshotHandler")

	p := r.URL.Query().Get("api_key")
	if p != s.apiKey {
		s.Logger.Printf("Request - WARNING: api key \"%s\" does not match known key \"%s\"", p, s.apiKey)
		s.setResponse(wr, "api key is incorrect or was not passed", 403)
		return
	}

	data, err := s.SensorsService.FetchSensorData(ctx)
	if err != nil {
		s.Logger.Printf("Request - ERROR to fetch sensor data > %s \n", err.Error())
		s.setResponse(wr, fmt.Sprintf("can't get snapshot of sensor data > %s", err.Error()), 500)
		return
	}

	mData, err := json.Marshal(data)
	if err != nil {
		s.Logger.Printf("Request - ERROR: failed to marshal sensor data > %s \n", err.Error())
		s.setResponse(wr, fmt.Sprintf("can't marshal sensor snapshot data > %s", err.Error()), 500)
		return
	}

	if err := s.GoogleIOTService.PublishSensorData(ctx, string(mData)); err != nil {
		s.Logger.Printf("Request - ERROR: failed to publish the sensor data to cloud iot > %s \n", err.Error())
		s.setResponse(wr, fmt.Sprintf("can't publish the sensor data > %s", err.Error()), 500)
		return
	}

	s.Logger.Println("Request - successfully published the sensor data")
	s.setResponse(wr, "Successfully published the sensor data", 200)
}

func (s *server) setResponse(wr http.ResponseWriter, message string, statusCode int) {
	wr.WriteHeader(statusCode)
	wr.Write([]byte(message))
	return
}
