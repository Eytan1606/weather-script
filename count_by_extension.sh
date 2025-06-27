#!/bin/bash

# שימוש: ./count_by_extension.sh <extension> [directory]

EXT="$1"
DIR="${2:-.}"  # אם לא סופק נתיב תיקייה – השתמש בתיקייה הנוכחית

if [ -z "$EXT" ]; then
    echo "Usage: $0 <extension> [directory]"
    echo "Example: $0 txt /home/eytan/documents"
    exit 1
fi

COUNT=$(find "$DIR" -type f -name "*.$EXT" | wc -l)
echo "📁 Found $COUNT file(s) with .$EXT extension in '$DIR'"

