#!/bin/bash
# Get battery percentage (Linux)
BATTERY=$(cat /sys/class/power_supply/BAT0/capacity)

if [ "$BATTERY" -le 20 ]; then
  echo "⚠️ Battery low: $BATTERY%!"
elif [ "$BATTERY" -ge 95 ]; then
  echo "🔋 Battery almost full: $BATTERY%!"
else
  echo "Battery level: $BATTERY%"
fi
