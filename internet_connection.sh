#!/bin/bash

echo "Checking your internet connection"
 #Trying to ping Google's DNS


 if ping  -q -c 2 -W 2 8.8.8.8 > /dev/null/; then
	 echo"Internet is Working"
 else
	 echo "Internet isn't Working!"
 fi

