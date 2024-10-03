#!/bin/bash

CONFIG_PATH="/home/koras/.config/waybar/config.jsonc"
STYLE_PATH="/home/koras/.config/waybar/style.css"

while inotifywait -e close_write "$CONFIG_PATH" "$STYLE_PATH"; do
    pkill waybar && waybar &
done
