# Orange Pi 5 Plus fan PWM direct control fix

## What is this?
This repo contains overlay for Orange Pi 5 Plus (vendor image, armbian) that allows to disable vendor fan driver and assume direct control over PWM chip 0, that is responsible for controlling fan speed.

## Why?

This allows to free up pwmchip0, and gives finer control over the fan to user. 
Plus, it greatly simplefies applying [this fix](https://github.com/metamot/opi5plus_fan_fix). 

## How to install?

Download overlay the `OP5_plus_manual_fan.dts` and execute `sudo armbian-add-overlay OP5_plus_manual_fan.dts`. 
Also, you might whant to avoid installing all overlays related to `pwm0` that come with armbian by default (use `armbian-config` for this). Said overlays might conflict with my overlay.
When done -- reboot.

## How to remove?

Go to `/boot/overlay-user`, and remove file `OP5_plus_manual_fan.dtbo`. 
Reboot.

## How to control PWM via /sys?

You can find basic instruction in file `clear_fan.sh`.


## What is next?

Write your own fan manager, or repurpuse one of the ready-made ones. Most of them use PWM anyway, and so you will only need to change pwmchip. 

## How to contribute?

1. If you have written half-way dicent power manager - please, let me know. I will include it into the repo.
2. Open issue if you find any bugs.
3. Open issue if you have any ideas regarding this topic. 
