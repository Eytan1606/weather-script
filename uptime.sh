#!/bin/bash

# Read the uptime in seconds from /proc/uptime
uptime_seconds=$(awk '{print int($1)}' /proc/uptime)

# Convert seconds to a more human-readable format (e.g., days, hours, minutes, seconds)
days=$((uptime_seconds / 86400))
hours=$(( (uptime_seconds % 86400) / 3600 ))
minutes=$(( (uptime_seconds % 3600) / 60 ))
seconds=$((uptime_seconds % 60))

echo "System has been up for:"
echo "Days: $days"
echo "Hours: $hours"
echo "Minutes: $minutes"
echo "Seconds: $seconds"

