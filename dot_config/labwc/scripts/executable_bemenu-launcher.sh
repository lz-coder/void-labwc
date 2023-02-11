#!/bin/bash
mode=$1

echo "$mode"

background='#1a1a1a'
color5='#268bd2'

BEMENU_ARGS="-n -i -p '' -c -l 20 -W 0.5 --tb '$background' --tf '$color5' --fb '$background' --nb '$background' --hb '$background' --hf '$color5' --bdr '$color5' --border '5'"

if [[ $mode = "drun" ]]; then
    killall bemenu ||  j4-dmenu-desktop --dmenu="bemenu ${BEMENU_ARGS}" --term="foot"
elif [[ $mode = "run" ]]; then
    killall bemenu || bemenu-run "${BEMENU_ARGS}"
fi
