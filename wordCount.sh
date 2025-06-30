#!/bin/bash

# שימוש: ./word_count.sh <filename>

FILE="$1"

# בדיקה אם קובץ סופק
if [ -z "$FILE" ] || [ ! -f "$FILE" ]; then
    echo "Usage: $0 <filename>"
    echo "Example: $0 article.txt"
    exit 1
fi

# ניקוי טקסט, המרת אותיות לקטנות, פירוק למילים וספירה
cat "$FILE" \
    | tr -cs '[:alpha:]' '[\n*]' \
    | tr '[:upper:]' '[:lower:]' \
    | sort \
    | uniq -c \
    | sort -nr \
    | head -30
