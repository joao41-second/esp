// Defina o pino do LED integrado
// Para ESP8266, geralmente é o GPIO2 (D4 no NodeMCU)
// Para ESP32, geralmente é o GPIO2 também

#define LED_BUILTIN 2

void setup() {
  // Configura o pino do LED como saída
  pinMode(LED_BUILTIN, OUTPUT);
}

void loop() 
{
 // delay(500); // Aguarda 3 segundos

  // Desliga o LED
}

