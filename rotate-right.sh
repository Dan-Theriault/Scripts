#!/usr/bin/env bash

xrandr -o right
xinput set-prop 'ELAN Touchscreen' 'Coordinate Transformation Matrix' 0, 1, 0, -1, 0, 1, 0, 0, 1
xinput set-prop 'ELAN Touchscreen Pen' 'Coordinate Transformation Matrix' 0, 1, 0, -1, 0, 1, 0, 0, 1
onboard &
xinput disable 'SynPS/2 Synaptics TouchPad'
