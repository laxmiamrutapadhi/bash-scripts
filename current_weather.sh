#!bin/bash

#A simple weather info. using wttr.in

echo "Enter your city name"
read city
echo"Fetching weather for $city..."
curl-s"https://wttr.in/${city}?format=3"


