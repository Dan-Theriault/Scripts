#!/usr/bin/env bash

xrandr -o inverted
xinput set-prop 'ELAN Touchscreen' 'Coordinate Transformation Matrix' -1, 0, 1, 0, -1, 1, 0, 0, 1
xinput set-prop 'ELAN Touchscreen Pen' 'Coordinate Transformation Matrix' -1, 0, 1, 0, -1, 0, 0, 1
killall onboard
xinput enable 'SynPS/2 Synaptics TouchPad'
