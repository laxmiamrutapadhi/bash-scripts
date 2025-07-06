#!/bin/bash

#Show Basic System Information

echo "System Information"
echo "==================="
echo"Date: $(date)"
echo "Hostname: $(hostname)"
echo "Memory usage:"
free -h
echo
echo "CPU information:"
lscput |grep 'Model name\|CPU(s):' |uniq
echo
echo "Uptime:"
uptime -p
echo
echo "OS version"
cat /etc/os-release | grep NAME |cut -d= -f2 | tr -d '"'
echo "==============="

