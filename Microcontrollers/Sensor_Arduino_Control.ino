const int voltagePin = A0;

// Arduino Uno ADC reference voltage
const float ADC_REFERENCE = 5.0;

// Number of readings to average
const int NUM_SAMPLES = 5;

void setup() {

  Serial.begin(9600);

  Serial.println("READY");
}

void loop() {

  if (Serial.available() > 0) {

    String command = Serial.readStringUntil('\n');
    command.trim();

    if (command == "MEASURE") {

      // Take multiple measurements and average them
      long total = 0;

      for (int i = 0; i < NUM_SAMPLES; i++) {
        total += analogRead(voltagePin);
        delay(0.1);
      }

      float averageADC = total / (float)NUM_SAMPLES;

      // Convert ADC reading to voltage
      float voltage = averageADC * ADC_REFERENCE / 1023.0;

      Serial.print("V ");
      Serial.println(voltage, 4);
    }

    else {
      Serial.println("ERROR: Unknown command");
    }
  }
}