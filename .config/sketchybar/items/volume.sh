#!/bin/bash

sketchybar --add item volume right \
           --set volume script="$PLUGIN_DIR/volume.sh" \
                background.color=0xfff8e71c \
                icon.color=0xff000000\
                label.color=0xff000000\
                background.corner_radius=10 \
           --subscribe volume volume_change 
          
