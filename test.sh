#!/bin/bash

BAT_PATH="/sys/class/power_supply/BAT0"

if [ -d "$BAT_PATH" ]; then
    STATUS=$(cat "$BAT_PATH/status")
    CAPACITY=$(cat "$BAT_PATH/capacity")
    echo "סטטוס סוללה: $STATUS"
    echo "אחוז טעינה: $CAPACITY%"
else
    echo "לא נמצאה סוללה בנתיב $BAT_PATH"
fi
