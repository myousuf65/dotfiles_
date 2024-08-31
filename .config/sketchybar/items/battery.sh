#!/bin/bash

sketchybar --add item battery right \
           --set battery update_freq=120 \
                         script="$PLUGIN_DIR/battery.sh" \
                background.color=0xffcc87ff \
                background.corner_radius=10 \
                icon.color=0xff000000\
                label.color=0xff000000\
                label.font="SF Pro:Semibold:16.0" \  
           --subscribe battery system_woke power_source_change
