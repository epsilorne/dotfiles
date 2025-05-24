#!/bin/sh

player_status=$(playerctl status 2> /dev/null)

if [ "$player_status" = "Playing" ]; then
    echo "now playing: $(playerctl metadata artist) - $(playerctl metadata title)"
fi
