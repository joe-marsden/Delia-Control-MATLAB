#include <DFRobot_GP8XXX.h>

DFRobot_GP8413 GP8413(/*deviceAddr=*/0x58);

void setup() {

  Serial.begin(9600);

  while (GP8413.begin() != 0) {
    Serial.println("ERROR: GP8413 communication failed");
    delay(1000);
  }

  // Set DAC output range to 0-10 V
  GP8413.setDACOutRange(GP8413.eOutputRange10V);

  // Start both channels at 0 V
  GP8413.setDACOutVoltage(0, 0);
  GP8413.setDACOutVoltage(0, 1);

  Serial.println("READY");
}

void loop() {

  if (Serial.available() > 0) {

    // Read a complete command until newline
    String command = Serial.readStringUntil('\n');
    command.trim();

    // Command format:
    // V0 6.5
    // V1 2.0

    if (command.startsWith("V0 ")) {

      float voltage = command.substring(3).toFloat();

      if (voltage >= 0.0 && voltage <= 10.0) {

        int dacValue = (int)(voltage / 10.0 * 32767.0);

        GP8413.setDACOutVoltage(dacValue, 0);

        Serial.print("OK V0 ");
        Serial.println(voltage, 3);

      } else {
        Serial.println("ERROR: Voltage must be 0-10 V");
      }

    }

    else if (command.startsWith("V1 ")) {

      float voltage = command.substring(3).toFloat();

      if (voltage >= 0.0 && voltage <= 10.0) {

        int dacValue = (int)(voltage / 10.0 * 32767.0);

        GP8413.setDACOutVoltage(dacValue, 1);

        Serial.print("OK V1 ");
        Serial.println(voltage, 3);

      } else {
        Serial.println("ERROR: Voltage must be 0-10 V");
      }

    }

    else {
      Serial.println("ERROR: Unknown command");
    }
  }
}
