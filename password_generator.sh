#!/bin/bash

# Simple password generator

echo "This is a simple password generator"
echo "Please enter the length of the password:"
read PASS_LENGTH

for p in $(seq 1); do
  openssl rand -base64 48 | head -c $PASS_LENGTH
  echo
done
