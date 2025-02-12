#!/bin/sh

# MUST be run as superuser OR you have to expose PWM0 to userspace.

# MUST be run in THIS EXECT ORDEOR, or WILL NOT WORK
echo 0 | sudo tee /sys/class/pwm/pwmchip1/export #Allow general manual control over PWM. You must NOT alter this value at ANY further point.
echo 1000000 | sudo tee /sys/class/pwm/pwmchip1/pwm0/period #How long is one rotation of the signal. You can alter this value at this point.
echo 500000 | sudo tee /sys/class/pwm/pwmchip1/pwm0/duty_cycle #For how long during one rotation should signal stay ON. You can alter this value at this point.
echo 1 | sudo tee /sys/class/pwm/pwmchip1/pwm0/enable #Activate PWN chip. You should NOT alter this value at ANY further point.
echo normal | sudo tee /sys/class/pwm/pwmchip1/pwm0/polarity #Set polarity. You should NOT alter this value at ANY further point.
#After this point, when the the whole thing is initialized, you can play around with PERIOD and DUTY_CYCLE as you see fit. 
#Beware that bouth of thous parameters have accepteble ranges + duty_cycle is allways < period.

exit
