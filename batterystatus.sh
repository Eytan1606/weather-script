#!/bin/bash

INTERNAL=$(cat /sys/class/power_supply/BAT0/capacity)
EXTERNAL=$(cat /sys/class/power_supply/BAT1/capacity)
STATUS=$(cat /sys/class/power_supply/BAT1/status)

echo "$INTERNAL $EXTERNAL $STATU"
