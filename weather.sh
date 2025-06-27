#!/bin/bash

# בדיקה אם המשתמש הכניס שם עיר
if [ -z "$1" ]; then
    echo "Usage: $0 <city-name>"
    exit 1
fi

CITY="$1"

# שליפת מזג האוויר מעדכון חי דרך wttr.in
curl -s "https://wttr.in/${CITY}?format=3"

