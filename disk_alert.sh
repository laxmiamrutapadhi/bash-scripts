#!/bin/bash

# Set threshold (in %)
THRESHOLD=80

# Get disk usage for root /
USAGE=$(df / | grep / | awk '{ print $5 }' | sed 's/%//g')

# Compare and alert
if [ "$USAGE" -gt "$THRESHOLD" ]; then
  echo "WARNING: Disk usage is above ${THRESHOLD}% (Current: ${USAGE}%)"
else
  echo "Disk usage is OK (Current: ${USAGE}%)"
fi
