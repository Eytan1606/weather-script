#!/bin/bash

# שימוש: ./sort_file.sh <input_file> [output_file]

INPUT="$1"
OUTPUT="$2"

# בדיקת קיום קובץ קלט
if [ -z "$INPUT" ] || [ ! -f "$INPUT" ]; then
    echo "Usage: $0 <input_file> [output_file]"
    echo "Example: $0 names.txt sorted_names.txt"
    exit 1
fi

# מיון השורות לפי סדר אלפביתי
if [ -z "$OUTPUT" ]; then
    # אם לא סופק קובץ פלט – הצג למסך
    sort "$INPUT"
else
    # מיון ושמירה לקובץ הפלט
    sort "$INPUT" > "$OUTPUT"
    echo "✅ Sorted content saved to '$OUTPUT'"
fi
