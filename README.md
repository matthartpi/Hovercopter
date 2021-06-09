# HoverCopter Project Detailed Overview

## 6302view
Code from this repo https://github.com/almonds0166/6302view/tree/master/6302view. It is used to monitor and update variables in real time from the Arduino code that are passed to 6302view. They can be plotted in a graph or changed via a slider in the gui.html that the user opens in their web browser.

## Encoder
To measure the angle of the hover arm, we utilized a [TRDA-2E shaft angle encoder (SAE)](https://github.com/matthartpi/Hovercopter/blob/master/SAE/TRDA-2E_SAEncoders.pdf). Using the AiEsp32RotaryEncoder.h header file, we could read the angle that the arm was at. This was used to define the state variables, which were angle and angular velocity.


## Building/Testing the PCB and Hover Arm

### PCB
![PCB](https://github.com/matthartpi/Hovercopter/blob/master/BuildingPCB/Board(strghtfront).jpg)

When we built the PCB (shown above), we had to use different values of capacitance and resistance for a couple of the parts. The list of specified components shown below was followed closely, but we used different values for C1, C3, C4, R10, and R11. For C1 we used five 10uF capacitors in parallel to get close to the specified 47uF capacitance. We used 1uF capacitors for C3 and C4. For R10 and R11 we used resistors that were 1.1kΩ.

![BOM](https://github.com/matthartpi/Hovercopter/blob/master/BuildingPCB/BuiltBOM.png)


### Hover Arm:
The hover arm mechanisms were assembled for us, so we simply had to test them to ensure that they would work with our board. Below is a picture of the hover arm that pivots on the SAE.

![Hover Arm](https://github.com/matthartpi/Hovercopter/blob/master/BuildingPCB/Mechanism(floor).jpg)

### Testing
In initial testing, we found that we needed to modify the PCB so that the SAE could properly be read. The pins needed to be changed from 2 and 0 on the ESP32, and we decided to connect them instead to pins 16 and 4, respectively. After changing this, we were able to read the SAE correctly.

We tested the SAE by hooking it up to the ESP32 and using example code to record the angle. Graphing the data in Excel resulted in those shown below.

![MeasAngVelVsTm](https://github.com/matthartpi/Hovercopter/blob/master/HangingDown/AngularVelocityVsTime.png)

![MeasAngAccVsTm](https://github.com/matthartpi/Hovercopter/blob/master/HangingDown/AngularAccelerationVsTime.png)

Simulating the system with a damping factor in [a Jupyter Lab IPython Notebook](https://github.com/matthartpi/Hovercopter/blob/master/FullOrderObserver/HoverCopterFullOrdObs.ipynb) using an Octave Kernel gave similar results (shown below), though we didn't calculate the angular acceleration. We only measured the angle and the angular velocity.

![SimAngVelVsTm](https://github.com/matthartpi/Hovercopter/blob/master/HangingDown/SimulatedAngularVelocityVsTime.png)

![SimAngAccVsTm](https://github.com/matthartpi/Hovercopter/blob/master/HangingDown/SimulatedAngularAccelerationVsTime.png)


## Hand-Placing Poles
Using the [Jupyter Lab IPython Notebook](https://github.com/matthartpi/Hovercopter/blob/master/FullOrderObserver/HoverCopterFullOrdObs.ipynb), we passed our system's state space model A and B matrices and guessed poles into the [place() Octave function](https://octave.sourceforge.io/control/function/place.html) to calculate the gains that multiply to the state variables. These gains were then used in the [Arduino code](https://github.com/matthartpi/Hovercopter/blob/master/HandPlacingPoles/HandPlacingPoles/HandPlacingPoles2/HandPlacingPoles2.ino) to multiply with the state variables in feedback to control the pulse-width modulation (PWM) being sent to the motor and keeping it hovering horizontally despite external disturbances like a hit up or down with your hand.

The performance of the system is shown in a [video](https://github.com/matthartpi/Hovercopter/blob/master/HandPlacingPoles/HandPlacingPolesPerformance.mp4) that you can download to watch if you are interested in a visual demonstration.

## LQR Pole Placing
With linear-quadratic regulator control, the [lqr() Octave function](https://octave.sourceforge.io/control/function/lqr.html) takes in the A and B state space model matrices and also used Q and R matrices to set the gains. The Q matrix is a diagonal matrix that defines the "weight" of each state variable how quickly it should be corrected. The R matrix represents the cost of control to move the system back to where it should be.

We found that the system responded more smoothly with LQR than hand-placing poles. The Arduino code was the same as for hand-placing poles. The performance of the system is shown in a [video](https://github.com/matthartpi/Hovercopter/blob/master/LQR/LQR_Performance.mp4) that you can download to watch if you are interested in a visual demonstration.

## Full Order Observer
A full order observer can be used to estimate the next state variables from the inputs to a system. The [lqe() Octave function](https://octave.sourceforge.io/control/function/lqe.html) can be used to set up an observer and get the observer poles and gains. For more details see this [Jupyter Notebook](https://github.com/matthartpi/Hovercopter/blob/master/FullOrderObserver/HoverCopterFullOrdObs.ipynb). We weren't able to test the observer on the hover arm physically, but it was simulated in the Jupyter Notebook linked above.
