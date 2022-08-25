#! /bin/bash

echo "Which directory do you want to monitor?: "
read dir

if [ -d "$dir" ]; then
	inotifywait -m --timefmt '%F %T' --format '%T %w%f %e' $dir > inotify_logs.txt
else
	echo "Provided directory '"$dir"'  does not exist!"
fi
