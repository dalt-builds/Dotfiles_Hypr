#!/bin/bash

STATE_FILE="$HOME/.config/hypr/blur_state"

if [ ! -f "$STATE_FILE" ]; then
    echo "on" > "$STATE_FILE"
fi

STATE=$(cat "$STATE_FILE")

if [ "$STATE" = "on" ]; then
    hyprctl keyword decoration:blur:enabled false
    echo "off" > "$STATE_FILE"
else
    hyprctl keyword decoration:blur:enabled true
    echo "on" > "$STATE_FILE"
fi

