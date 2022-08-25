#! /bin/bash



echo "Enter filename to search text from"
read fileName

if [[ -f $fileName ]]; then
	echo "Enter the text to search"
	read grepvar
	grep -i -n $grepvar $fileName	#add -c to count occurances, add -v to see lines without a word
else
	echo "$fileName doesn't exist"
fi


