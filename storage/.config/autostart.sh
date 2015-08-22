#!/bin/sh

    # that defines the default primary output
    OUTPUT=`xrandr -display :0 -q | sed '/ connected/!d;s/ .*//;q'`
    #disable this output wait a second and enable it again
    xrandr -display :0 --output $OUTPUT --off
    sleep 1
    xrandr -display :0 --output $OUTPUT --auto
  ;;


