#include <Arduino.h>
// Rotary Encoder Inputs
#define OUTA 0
#define OUTB 2

int counter = 0;
int currentStateOUTA;
int lastStateOUTA;
String currentDir ="";

void setup() {
  
  // Set encoder pins as inputs
  pinMode(OUTA,INPUT_PULLDOWN);
  pinMode(OUTB,INPUT_PULLDOWN);

  // Setup Serial Monitor
  Serial.begin(115200);

  // Read the initial state of OUTA
  lastStateOUTA = digitalRead(OUTA);
  
  // Call updateEncoder() when any high/low changed seen
  // on interrupt 0 (pin 2), or interrupt 1 (pin 3)
  attachInterrupt(0, updateEncoder, CHANGE);
  attachInterrupt(2, updateEncoder, CHANGE);
}

void loop() {
  //Do some useful stuff here
}

void updateEncoder(){
  // Read the current state of OUTA
  currentStateOUTA = digitalRead(OUTA);

  // If last and current state of OUTA are different, then pulse occurred
  // React to only 1 state change to avoid double count
  if (currentStateOUTA != lastStateOUTA  && currentStateOUTA == 1){

    // If the OUTB state is different than the OUTA state then
    // the encoder is rotating CCW so decrement
    if (digitalRead(OUTB) != currentStateOUTA) {
      counter --;
      currentDir ="CCW";
    } else {
      // Encoder is rotating CW so increment
      counter ++;
      currentDir ="CW";
    }

    Serial.print("Direction: ");
    Serial.print(currentDir);
    Serial.print(" | Counter: ");
    Serial.println(counter);
  }

  // Remember last OUTA state
  lastStateOUTA = currentStateOUTA;
}
