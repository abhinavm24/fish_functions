function rssi
    iwconfig wlan0 | grep Signal
end
