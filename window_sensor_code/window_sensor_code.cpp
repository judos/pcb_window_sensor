#include "settings.h"

void setup() {
    // configure analog voltage measurements to be relative to 1.1V
    analogReference(INTERNAL);

    pinMode(BUTTON_PIN, INPUT);
    pinMode(SENSOR_PIN, INPUT);

    pinMode(LED_PIN, OUTPUT);
    digitalWrite(LED_PIN, false);

    pinMode(BUZZER_PIN, OUTPUT);
    digitalWrite(BUZZER_PIN, false);
}

/* read supply voltage in millivolts */
int readSupplyVoltage() {
    // enable measuring voltage divider
    digitalWrite(VSENSE_ENABLE_PIN, true);
    /* read voltage as a 10-bit value
     * -> value of 1023 means measured voltage is >= 1.1V
     * -> because we use a voltage divider, this means that
     *      a value 1023 indicates a supply voltage of >= 2.2V
     * -> because we supply the voltage divider from a digital pin,
     *      the measured voltage is a bit too low, but we can compensate.
     */
    auto voltage = analogRead(VSENSE_PIN);
    // disable voltage divider
    digitalWrite(VSENSE_ENABLE_PIN, false);
    // map 10-bit value to approximate millivolts.
    // The multiplication factor is determined experimentally.
    return voltage * 2.5;
}

void loop() {
    boolean button = !digitalRead(BUTTON_PIN);
    boolean sensor = !digitalRead(SENSOR_PIN);

    digitalWrite(LED_PIN, button);

    if (sensor) {
        // play a 1kHz tone for 20 milliseconds
        tone(BUZZER_PIN, 1000, 20);
    }

    if (!button && !sensor) {
        // voltage measurement demo: if the voltage drops
        // below 2V the LED should stay on
        auto voltage = readSupplyVoltage();
        digitalWrite(LED_PIN, voltage < 2000);
        delay(50);
    }

}
