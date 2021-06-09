# HoverCopter

## 6302view
Code from this repo https://github.com/almonds0166/6302view/tree/master/6302view. It is used to monitor and update variables in real time from the Arduino code that are passed to 6302view. They can be plotted in a graph or changed via a slider in the gui.html that the user opens in their web browser.

## Encoder
To measure the angle of the hover arm, we utilized a TRDA-2E shaft angle encoder (SAE). Using the AiEsp32RotaryEncoder.h header file, we could read the angle that the arm was at. This was used to define the state variables, which were angle and angular velocity.


## ESP32, PCB, and Hover Arm

### PCB:
![PCB](https://github.com/matthartpi/Hovercopter/blob/master/Hovercopter%20-%20General/BuildingPCB/Board(strghtfront).jpg)

### Hover Arm:
![Hover Arm](https://github.com/matthartpi/Hovercopter/blob/master/Hovercopter%20-%20General/BuildingPCB/Mechanism(floor).jpg)

