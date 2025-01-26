# OP5P-fan-fix

# Why the repo is empty!?

Because it is not ready. Expexct it to fill up in next few days. 

## What is this?
This repo contains overlay for Orange Pi 5 Plus (vendor image, armbian) that allows to disable vendor fan driver.


## Why?

This allows to free up pwmchip0, and gives finer control over the fan to user. 
Plus, it greatly simplefies applying [this fix](https://github.com/metamot/opi5plus_fan_fix). 

## How to install?

Download overlay from `release` tab and execute `sudo armbian-add-overlay OVERLAY_FILE`, where `OVERLAY_FILE` is the file you just downloaded. 
Also, you might whant to install all overlays related to `pwm0` that come with armbian by default (use `armbian-config` for this). Said overlays might be required for pwm control via `/sys` to work. 


## What is next?

Write your own fan manager, or repurpuse one of the ready-made ones. Most of them use PWM anyway, and so you will only need to change pwmchip. 
