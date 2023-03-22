#!/usr/bin/with-contenv bashio


BLUETOOTHADDRESS=$(bashio::config 'btaddress')
TAPESIZE=$(bashio::config 'tapesize')
BROKER=$(bashio::config 'mqtt_broker')
PORT=$(bashio::config 'mqtt_port')
PASS= $(bashio::config 'mqtt_pass')
TOPIC=$(bashio::config 'mqtt_topic')

case TAPESIZE in
  3.5)
    PNGHEIGHT=24
    ;;
  6)
    PNGHEIGHT=32
    ;;
  9)
    PNGHEIGHT=50
    ;;
  12)
    PNGHEIGHT=70
    ;;
  18)
    PNGHEIGHT=112
    ;;
  24)
    PNGHEIGHT=128
    ;;
  *)
    echo "Invalid tapesize specified. Supported values are 3.5, 6, 9, 12, 18 and 24"
esac

python3 -m http.server 8000