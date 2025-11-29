#!/bin/bash

CONNECTED=$(xrandr --query | grep " connected" | awk '{print $1}')

HDMI_RES="2560x1080"
DP_RES="1920x1080"

#   SCREEN LAYOUT
#   ┌─────┐ 
#   │     │    
#   │DP-0 │┌───────────────┐
#   │     ││    HDMI-0     │
#   │     ││               │
#   │     │└───────────────┘
#   └─────┘ 

if echo "$CONNECTED" | grep -q "HDMI-0" && echo "$CONNECTED" | grep -q "DP-0"; then
    xrandr --output DP-0 --mode $DP_RES --rotate left --pos 0x0 --output HDMI-0 --mode $HDMI_RES --pos 1080x400 --primary
fi
feh --bg-scale /home/oscar/Pictures/csm.jpg --bg-scale /home/oscar/Pictures/killua.jpg

