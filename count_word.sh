#!/bin/bash

# Check if both word and file were provided
if [ $# -ne 2 ]; then
    echo "Usage: $0 <word> <file>"
    exit 1
fi

WORD="$1"
FILE="$2"

# Check if file exists
if [ ! -f "$FILE" ]; then
    echo "Error: File '$FILE' not found."
    exit 2
fi

# Count occurrences (case-sensitive, whole word match)
COUNT=$(grep -o "\b$WORD\b" "$FILE" | wc -l)

echo "The word '$WORD' appears $COUNT times in '$FILE'."
