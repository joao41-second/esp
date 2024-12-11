curl -fsSL https://raw.githubusercontent.com/arduino/arduino-cli/master/install.sh | sh
./bin/arduino-cli core install esp8266:esp8266

rm -fr ~/.arduino15/

PATHS=$(pwd)

echo $PATHS

ln -s -f $PATHS/bin/config/.arduino15 ~/

