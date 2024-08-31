#!/bin/bash

sketchybar --add item cpu right \
           --set cpu  update_freq=2 \
                      icon=􀧓  \
                      script="$PLUGIN_DIR/cpu.sh"\
                      icon.color=0xff000000\
                        label.color=0xff000000\
                    background.corner_radius=10\
                      background.color=0xff50e3c2 \ 
