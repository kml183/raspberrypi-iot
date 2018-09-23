package sensors

import (
	"time"
)

type LightData struct {
	Lux uint32 `json:"lux"`
}

type TempData struct {
	CPUTemp  float64 `json:"temp"`
	RoomTemp float32 `json:"room_temp"`
}

type GasData struct {
	CO2  uint16 `json:"co2"`
	TVOC uint16 `json:"tvoc"`
}

type SensorData struct {
	Lux       uint32    `json:"lux"`
	CO2       uint16    `json:"co2"`
	TVOC      uint16    `json:"tvoc"`
	RoomTemp  float32   `json:"room_temp"`
	CPUTemp   float64   `json:"cpu_temp"`
	TimeStamp time.Time `json:"timestamp"`
}

func (s *SensorData) convertFromLightAndGasData(g *GasData, l *LightData, t time.Time, temp *TempData) {
	s.TimeStamp = t
	s.Lux = l.Lux
	s.CO2 = g.CO2
	s.TVOC = g.TVOC
	s.RoomTemp = temp.RoomTemp
	s.CPUTemp = temp.CPUTemp
}

type FanState string

const (
	ToggleFan FanState = "Toggle"
	FanOn     FanState = "On"
	FanOff    FanState = "Off"
)
