ARDUINO = ./bin/arduino-cli

SRC = ./src/main.ino

config:
	$(ARDUINO) config init

config_visual:
	$(ARDUINO) config dump

upatate:
	$(ARDUINO) core update-index
	#$(ARDUINO) core install esp32:esp32
	$(ARDUINO)	core install esp8266:esp8266 
	

list:
	$(ARDUINO) core list 

compile:
	$(ARDUINO) compile --fqbn esp8266:esp8266:nodemcuv2 $(SRC)

all:
	sudo chmod 777 /dev/ttyUSB0
	$(ARDUINO) upload -p /dev/ttyUSB0 --fqbn esp8266:esp8266:nodemcuv2 $(SRC)
