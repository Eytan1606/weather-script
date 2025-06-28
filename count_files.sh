#!/bin/bash

# Check if an extension parameter was provided
if [ -z "$1" ]; then
    echo "Usage: $0 <file_extension> [--recursive]"
    exit 1
fi

EXT="$1"
RECURSIVE=false

# Check if recursive option was given
if [ "$2" == "--recursive" ]; then
    RECURSIVE=true
fi

# Normalize extension (remove leading dot if present)
EXT="${EXT#.}"

# Count files with the given extension
if [ "$RECURSIVE" = true ]; then
    COUNT=$(find . -type f -name "*.$EXT" | wc -l)
else
    COUNT=$(find . -maxdepth 1 -type f -name "*.$EXT" | wc -l)
fi

echo "Number of files ending with .$EXT: $COUNT"
