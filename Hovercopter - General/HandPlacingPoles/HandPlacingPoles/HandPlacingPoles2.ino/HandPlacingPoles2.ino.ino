#include "AiEsp32RotaryEncoder.h"
#include "Arduino.h"
#include <Six302.h> //for plotting
#include <math.h>   //for plotting

//6302view setup
CommManager cm(1000, 10000);
float encoderread; //Value of encoder
bool setzero; //button to reset zero of encoder
bool togglepoles; //toggle to use poles or not
float PWMval; 
float current; //
float loopTime;


// set the Motor Pin number
const int MotPin = 5;  // 5 corresponds to GPIO5

// setting PWM properties
const int freq = 5000;
const int MotChannel = 0;
const int resolution = 10; // resolution 8, 10, 12, 15



///// Analog Input Resistor Current Test /////
const int UpR = 33;    // select the input pin for the higher resistor voltage side
const int DnR = 32;    // select the pin for the lower resistor voltage side
int Vup_ADC, Vdn_ADC;  // declare variables
float Vup, Vdn, I;


/*
connecting Rotary encoder

Rotary encoder side    MICROCONTROLLER side  
-------------------    ---------------------------------------------------------------------
CLK (A pin)            any microcontroler intput pin with interrupt -> in this example pin 32
DT (B pin)             any microcontroler intput pin with interrupt -> in this example pin 21
SW (button pin)        any microcontroler intput pin with interrupt -> in this example pin 25
GND - to microcontroler GND
VCC                    microcontroler VCC (then set ROTARY_ENCODER_VCC_PIN -1) 

***OR in case VCC pin is not free you can cheat and connect:***
VCC                    any microcontroler output pin - but set also ROTARY_ENCODER_VCC_PIN 25 
                        in this example pin 25

*/
#define ROTARY_ENCODER_A_PIN 16
#define ROTARY_ENCODER_B_PIN 4
#define ROTARY_ENCODER_BUTTON_PIN 35
#define ROTARY_ENCODER_VCC_PIN -1 /* 27 put -1 of Rotary encoder Vcc is connected directly to 3,3V; else you can use declared output pin for powering rotary encoder */

//depending on your encoder - try 1,2 or 4 to get expected behaviour
//#define ROTARY_ENCODER_STEPS 1
//#define ROTARY_ENCODER_STEPS 2
#define ROTARY_ENCODER_STEPS 4

//instead of changing here, rather change numbers above
AiEsp32RotaryEncoder rotaryEncoder = AiEsp32RotaryEncoder(ROTARY_ENCODER_A_PIN, ROTARY_ENCODER_B_PIN, ROTARY_ENCODER_BUTTON_PIN, ROTARY_ENCODER_VCC_PIN, ROTARY_ENCODER_STEPS);

float g1 = 2.16;
float g2 = .272;
static unsigned long lastTime = 0; 
static unsigned long deltaTime = 0;
static float theta = 0;
static float theta_old = 0;
static float theta_dot = 0;
static float PWMval_fb;

void rotary_onButtonClick()
{
	static unsigned long lastTimePressed = 0;
	//ignore multiple press in that time milliseconds
	if (millis() - lastTimePressed < 500)
	{
		return;
	}
	lastTimePressed = millis();
	//Serial.print("button pressed at ");
	//Serial.println(millis());
}

void rotary_loop()
{
	//dont print anything unless value changed
	if (!rotaryEncoder.encoderChanged())
	{
		return;
	}

  encoderread = rotaryEncoder.readEncoder();
  deltaTime = (millis()-lastTime);
  theta = encoderread/2500*2*3.141592653589793238;
  theta_dot = (theta-theta_old)/deltaTime;
  
	//Serial.print("Value: ");
	//Serial.println(rotaryEncoder.readEncoder());
}
void setup6302() {
   cm.addButton(&setzero,"Set Zero");
   cm.addToggle(&togglepoles, "Use Hand Placed Poles?");
   cm.addPlot(&encoderread, "Encoder", 0, 2500);
   cm.addPlot(&current, "Current", 0, 2);
   cm.addPlot(&PWMval_fb, "PWMval", 0, 1023);
   cm.addSlider(&PWMval, "Set PWM", 0, 1023, 1);
   cm.addPlot(&loopTime, "Looptime",0,.5);
   cm.addSlider(&g1,"G1",0,30,.0001);
   cm.addSlider(&g2,"G2",0,30,0.0001);
   // Connect via serial
   cm.connect(&Serial, 115200);
}

void setupRotary(){
  //we must initialize rotary encoder
  rotaryEncoder.begin();

  rotaryEncoder.setup(
    [] { rotaryEncoder.readEncoder_ISR(); },
    [] { rotary_onButtonClick(); });

  //set boundaries and if values should cycle or not
  //in this example we will set possible values between 0 and 1000;
  bool circleValues = true;
  rotaryEncoder.setBoundaries(0, 2500, circleValues); //minValue, maxValue, circleValues true|false (when max go to min and vice versa)

  /*Rotary acceleration introduced 25.2.2021.
   * in case range to select is huge, for example - select a value between 0 and 1000 and we want 785
   * without accelerateion you need long time to get to that number
   * Using acceleration, faster you turn, faster will the value raise.
   * For fine tuning slow down.
   */
  rotaryEncoder.disableAcceleration(); //acceleration is now enabled by default - disable if you dont need it
  //rotaryEncoder.setAcceleration(250); //or set the value - larger number = more accelearation; 0 or 1 means disabled acceleration
}

void setupPWM(){
  ledcSetup(MotChannel, freq, resolution);
  // attach the channel to GPIO5 to be controlled
  ledcAttachPin(MotPin, MotChannel);  
}

void setup()
{
  //Plot Testing
  // Example plot

  setup6302();
	//Serial.begin(115200);
  setupRotary();
  setupPWM();
}

void loop()
{
  static unsigned long lastloopstart = millis();
  //Plot Testing
  if (setzero == true) {
    rotaryEncoder.reset();
  }
  
	//in loop call your custom function which will process rotary encoder values
	rotary_loop();
//  
    ///// For Current
  // read the value from higher resistor voltage
  Vup_ADC = analogRead(UpR);
  // read the value from lower resistor voltage
  Vdn_ADC = analogRead(DnR);

  
  // print ADC voltage values (for debugging)
//  Serial.print("Vup_ADC = ");
//  Serial.print(Vup_ADC);
//  Serial.print(" and ");
//  Serial.print("Vdn_ADC = ");
//  Serial.println(Vdn_ADC);
  
  // convert to actual voltage value
  Vup = (Vup_ADC * 3.3)/(4095);
  Vdn = (Vdn_ADC * 3.3)/(4095);
  // calculate the current
  current = (Vup - Vdn)/0.5;

  
  // print actual current value
//  Serial.print("Current = ");
//  Serial.print(I);
//  Serial.println(" amps");

PWMval_fb = constrain(PWMval + (-g1*theta-g2*theta_dot),0,1023);
  ///// For Motor
  // decrease the Motor RPMs
  // continuous decreasing
//    // set the PWMval of pin 2:
    if (togglepoles == true){
      ledcWrite(MotChannel, (int)PWMval_fb);
    } else  {
      ledcWrite(MotChannel, (int)PWMval);
    }
    loopTime = (float)(millis()-lastloopstart);
    cm.headroom();
//  cm.step();
//
//	//delay(50); //or do whatever you need to do...
}
