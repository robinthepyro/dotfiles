#!/bin/bash
if [ $# -lt 2 ]; then
  echo "Usage, remind_me.sh <number of minutes to remind in> <reminder message>"
  exit 1
fi

sleep $1m
notify-send $2
