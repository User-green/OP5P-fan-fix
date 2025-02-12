#!/bin/sh

#echo pwm-fan > /sys/devices/platform/pwm-fan/driver/unbind
echo 0 | sudo tee /sys/class/pwm/pwmchip1/export
echo 1000000 | sudo tee /sys/class/pwm/pwmchip1/pwm0/period
echo 500000 | sudo tee /sys/class/pwm/pwmchip1/pwm0/duty_cycle
echo 1 | sudo tee /sys/class/pwm/pwmchip1/pwm0/enable
echo normal | sudo tee /sys/class/pwm/pwmchip1/pwm0/polarity

exit
