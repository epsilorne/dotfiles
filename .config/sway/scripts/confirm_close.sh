#!/bin/bash

# Is the current window floating?
WINDOW_LAYOUT=$(swaymsg -t get_tree | jq '.. | select(.focused? == true) | .type' | tr -d '"')

# If it is, open confirmation menu
if [ "$WINDOW_LAYOUT" = "con" ]; then
  CHOICE=$(echo -e "stay\nclose" | wofi --conf ~/.config/wofi/confirm_close.conf --style ~/.config/wofi/confirm_close.css)
  
  if [ "$CHOICE" = "close" ]; then
    swaymsg kill
  fi
else
  swaymsg kill
fi

