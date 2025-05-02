#!/bin/bash

HOUR=$(date +%H)

if (( 10#$HOUR >= 6 && 10#$HOUR < 18 )); then
    EMOJI="󰖙"
else
    EMOJI=""
fi

echo $EMOJI
