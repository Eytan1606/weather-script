#!/bin/bash

# שימוש: ./reminder.sh <מספר_שניות> "<הודעת_תזכורת>"

DELAY="$1"
MESSAGE="$2"

# בדיקות קלט
if [ -z "$DELAY" ] || [ -z "$MESSAGE" ]; then
    echo "Usage: $0 <delay_in_seconds> \"Reminder message\""
    echo "Example: $0 10 \"Take a short break!\""
    exit 1
fi

# המתנה
echo "⏳ Reminder set. You will be reminded in $DELAY seconds..."
sleep "$DELAY"

# הצגת הודעה במסך
echo -e "\n🔔 Reminder: $MESSAGE"

