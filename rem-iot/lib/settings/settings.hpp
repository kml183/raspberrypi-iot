#ifndef _REM_SETTINGS_HPP
#define _REM_SETTINGS_HPP

#include "settings.hpp"
#include "Arduino.h"

// This is the length of the data in a contiguous memory block. 
// Any storage hardware like an epprom should have atleast the amount 
// of space specified by this macro to store the settings properly
#define SETTINGS_LEN 128

// The position that a buffer containing settings data starts at. 
// Some eeproms will use the first few bytes for administractive things
#define STARTING_POS 1
#define SSID_LEN 40

class Settings {

    public:
        Settings();

        String * ssid;
        String * password;

        void serialize(uint8_t * buf, int len);
        void deserialize(uint8_t * buf, int len);
};

#endif