#!/bin/bash
mode=$1

echo "$mode"

if [[ $mode = "drun" ]]; then
    killall rofi || rofi -show drun -terminal 'foot' -show-icons
elif [[ $mode = "window" ]]; then
    killall rofi || rofi -show window -show-icons
elif [[ $mode = "run" ]]; then
    killall rofi || rofi -show run -terminal 'foot' -run-command "{cmd}"
elif [[ $mode = "panel" ]]; then
    killall rofi || rofi  -theme-str 'window { margin: 3px 0 0 5px; width: 20%;}'\
    -show drun -show-icons -location 1 -terminal 'foot'
fi
