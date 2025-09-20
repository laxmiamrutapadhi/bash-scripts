#!/bin/bash
# Simple Calculator

echo "Enter calculation (e.g., 5+3 or 12/4):"
read CALC

# Evaluate calculation
RESULT=$(echo "$CALC" | bc -l)
echo "Result: $RESULT"
