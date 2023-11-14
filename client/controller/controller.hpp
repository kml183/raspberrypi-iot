#ifndef _REM_CONTROLLER_H
#define _REM_CONTROLLER_H

#include "Adafruit_BME280.h"
#include "PubSubClient.h"
#include "WiFi.h"
#include "time.h"
#include "PM1006K.h"
#include "UUID.h"

#include "debug.hpp"
#include "credentials.hpp"

class REMController {
    public:
        REMController(WiFiClass *wifi, PM1006K *pm1006k, Adafruit_BME280 *bme280, PubSubClient *pubsubClient, Debug * debugStream, Credentials * credentials);
        bool setupWiFi();
        bool refreshPM25();
        bool refreshBME280();
        bool setupSNTP();
        bool verifyClockSync();
        bool publish(const char * topic, const char * payload);
        bool publishData();
        bool publishStatus();
        String wifiConfig();

    private:
        // Drivers
        PM1006K *pm1006k;
        WiFiClass *wifi;
        Adafruit_BME280 *bme280;
        Debug * debugStream;
        Credentials * credentials;
        PubSubClient *pubsubClient;
        
        // Utilities
        UUID *uuidGenerator;

        // Data
        int pm2_5;
        int pm1_0;
        int pm10;
        float humidity;
        float temperature;
        float pressure;
};

#endif