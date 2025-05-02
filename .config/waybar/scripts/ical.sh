#!/bin/bash

CUR_MONTH=$(date +%m)
CUR_YEAR=$(date +%Y)

MONTH=$CUR_MONTH
YEAR=$CUR_YEAR

# Hide cursor
echo -ne "\e[?25l"

# Ensure cursor is shown again on exit
trap "echo -ne '\e[?25h'; clear; exit" INT TERM EXIT

while true; do
  clear
  if [ "$MONTH" -eq "$CUR_MONTH" ] && [ "$YEAR" -eq "$CUR_YEAR" ]; then
    ncal -C  # highlight today
  else
    ncal -C $MONTH $YEAR
  fi

  read -n 1 -s key
  case $key in
    h)
      if [ "$MONTH" -eq 1 ]; then
        MONTH=12
        YEAR=$((YEAR - 1))
      else
        MONTH=$((MONTH - 1))
      fi
      ;;
    l)
      if [ "$MONTH" -eq 12 ]; then
        MONTH=1
        YEAR=$((YEAR + 1))
      else
        MONTH=$((MONTH + 1))
      fi
      ;;
    q)
      break
      ;;
  esac
done
