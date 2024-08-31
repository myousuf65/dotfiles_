#!/bin/bash

sketchybar --add item calendar right \
           --set calendar icon=􀧞  \
                          update_freq=30 \
                          script="$PLUGIN_DIR/calendar.sh" \
                            icon.color=0xff000000\
                            label.color=0xff000000\
                            background.corner_radius=10 \
                          background.color=0xff7ed321\
