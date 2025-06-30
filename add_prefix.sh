#!/bin/bash

# שימוש: ./add_prefix.sh <prefix> [directory]

PREFIX="$1"
DIR="${2:-.}"  # ברירת מחדל: התיקייה הנוכחית

# בדיקת קלט
if [ -z "$PREFIX" ]; then
    echo "Usage: $0 <prefix> [directory]"
    echo "Example: $0 new_ /home/user/docs"
    exit 1
fi

# לולאה על כל קובץ .txt
for file in "$DIR"/*.txt; do
    # בדיקת קיום קובץ (למניעת הודעת שגיאה אם אין txt)
    [ -e "$file" ] || continue

    filename=$(basename "$file")
    newname="${DIR}/${PREFIX}${filename}"
    mv "$file" "$newname"
    echo "✔️ Renamed: $filename → ${PREFIX}${filename}"
done
