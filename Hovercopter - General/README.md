# HoverCopter Project Detailed Overview

## 6302view
Code from this repo https://github.com/almonds0166/6302view/tree/master/6302view. It is used to monitor and update variables in real time from the Arduino code that are passed to 6302view. They can be plotted in a graph or changed via a slider in the gui.html that the user opens in their web browser.

## Encoder
To measure the angle of the hover arm, we utilized a TRDA-2E shaft angle encoder (SAE). Using the AiEsp32RotaryEncoder.h header file, we could read the angle that the arm was at. This was used to define the state variables, which were angle and angular velocity.


## ESP32, PCB, and Hover Arm

### PCB
![PCB](https://github.com/matthartpi/Hovercopter/blob/master/Hovercopter%20-%20General/BuildingPCB/Board(strghtfront).jpg)

When we built the PCB (shown above), we had to use different values of capacitance and resistance for a couple of the parts. The list of specified components shown below was followed closely, but we used different values for C1, C3, C4, R10, and R11. For C1 we used five 10uF capacitors in parallel to get close to the specified 47uF capacitance. We used 1uF capacitors for C3 and C4. For R10 and R11 we used resistors that were 1.1kΩ.

![BOM](https://github.com/matthartpi/Hovercopter/blob/master/Hovercopter%20-%20General/BuildingPCB/BuiltBOM.png)


### Hover Arm:
The hover arm mechanisms were assembled for us, so we simply had to test them to ensure that they would work with our board. Below is a picture of the hover arm that pivots on the SAE.

![Hover Arm](https://github.com/matthartpi/Hovercopter/blob/master/Hovercopter%20-%20General/BuildingPCB/Mechanism(floor).jpg)

### Testing
We tested the SAE by hooking it up to the ESP32 and using example code to record the angle. Graphing the data in Excel resulted in those shown below.

![MeasAngVelVsTm](https://github.com/matthartpi/Hovercopter/blob/master/Hovercopter%20-%20General/HangingDown/AngularVelocityVsTime.png)

![MeasAngAccVsTm](https://github.com/matthartpi/Hovercopter/blob/master/Hovercopter%20-%20General/HangingDown/AngularAccelerationVsTime.png)

Simulating the system with a damping factor in a Jupyter Lab IPython Notebook using an Octave Kernel gave similar results (shown below), though we didn't calculate the angular acceleration. We only measured the angle and the angular velocity.

![SimAngVelVsTm](https://github.com/matthartpi/Hovercopter/blob/master/Hovercopter%20-%20General/HangingDown/SimulatedAngularVelocityVsTime.png)

![SimAngAccVsTm](https://github.com/matthartpi/Hovercopter/blob/master/Hovercopter%20-%20General/HangingDown/SimulatedAngularAccelerationVsTime.png)

