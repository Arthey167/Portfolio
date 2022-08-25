#! /bin/bash

echo "What do you want to check?"
read target

while true; do
	if ping -q -c 2 -W 1 $target > /dev/null; then
		echo "Website is up!!"
		break
	else
		echo "$targed is currently down."
	fi
sleep 2
done
