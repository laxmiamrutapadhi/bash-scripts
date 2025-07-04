#!/bin/bash
set -x
read -p "Which site do you want to check?" site

ping -c 1 $site

if [[ $? -eq 0 ]]
then
	echo "Successfully connected to $site"
else
	echo "Unable to connect $site"
fi

