#!/bin/bash

# Check if IP was provided
if [ -z "$1" ]; then
    echo "Usage: $0 <IP_ADDRESS>"
    exit 1
fi

IP="$1"
echo "Scanning open ports on $IP..."

# Loop through common ports (1–1024 or change range if needed)
for PORT in {1..1024}; do
    nc -z -w 1 "$IP" "$PORT" 2>/dev/null && echo "Port $PORT is open"
done
