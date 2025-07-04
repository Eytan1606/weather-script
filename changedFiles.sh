#!/bin/bash

# בדיקה שיש פרמטר אחד (מספר הימים)
if [ $# -ne 1 ]; then
  echo "שימוש: $0 <מספר_ימים>"
  exit 1
fi

DAYS_AGO=$1

# חיפוש מהתיקיה הנוכחית
find . -type f -mtime -$DAYS_AGO
