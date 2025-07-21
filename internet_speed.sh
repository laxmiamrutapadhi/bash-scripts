#!bin/bash

if ! command -v speedtest-cli &>dev/null
then
	echo"Installing speedtest-cli..."
	sudo apt update && sudo apt install speedtest-cli -y
fi

echo"Testing your internet speed..."
speedtest-cli --simple
:
