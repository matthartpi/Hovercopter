#include "Arduino.h"

///// PWM Motor Test /////
//https://create.arduino.cc/projecthub/muhammad-aqib/arduino-pwm-tutorial-ae9d71
// set the Motor Pin number
const int MotPin = 5;  // 5 corresponds to GPIO5
int brightness = 0;    // how bright the LED is
int fadeAmount = 5;    // how many points to fade the LED by

// setting PWM properties
const int freq = 5000;
const int MotChannel = 0;
const int resolution = 10; // resolution 8, 10, 12, 15


///// Analog Input Resistor Current Test /////
const int UpR = 33;    // select the input pin for the higher resistor voltage side
const int DnR = 32;    // select the pin for the lower resistor voltage side
int Vup_ADC, Vdn_ADC;  // declare variables
float Vup, Vdn, I;

/// Loops for both ///
void setup() {
  ///// For Current
  Serial.begin(115200);

  ///// For Motor
  // configure Motor PWN functionalities
  ledcSetup(MotChannel, freq, resolution);
  // attach the channel to GPIO5 to be controlled
  ledcAttachPin(MotPin, MotChannel);
}

void loop() {
  ///// For Current
  // read the value from higher resistor voltage
  Vup_ADC = analogRead(UpR);
  // read the value from lower resistor voltage
  Vdn_ADC = analogRead(DnR);
  // print ADC voltage values (for debugging)
  Serial.print("Vup_ADC = ");
  Serial.print(Vup_ADC);
  Serial.print(" and ");
  Serial.print("Vdn_ADC = ");
  Serial.println(Vdn_ADC);
  
  // convert to actual voltage value
  Vup = (Vup_ADC * 3.3)/(4095);
  Vdn = (Vdn_ADC * 3.3)/(4095);
  // calculate the current
  I = (Vup - Vdn)/0.5;
  // print actual current value
  Serial.print("Current = ");
  Serial.print(I);
  Serial.println(" amps");

  ///// For Motor
  // decrease the Motor RPMs
  // continuous decreasing
    // set the brightness of pin 2:
    ledcWrite(MotChannel, brightness);
  
    // change the brightness for next time through the loop:
    brightness = brightness + fadeAmount;
  
    // reverse the direction of the fading at the ends of the fade:
    if (brightness <= 0 || brightness >= 1023) {
      fadeAmount = -fadeAmount;
    }
    // wait for 30 milliseconds to see the dimming effect
    delay(10);
}
