#!/bin/bash

if [ -z "$1" ]; then
    echo "Usage: $0 <seconds>"
    exit 1
fi

SECONDS_LEFT=$1


while [ $SECONDS_LEFT -gt 0 ]; do
    echo -ne "⏳ Time left: $SECONDS_LEFT seconds\r"
    sleep 1
    ((SECONDS_LEFT--))
done

echo -e "\n⏰ Time's up!"

