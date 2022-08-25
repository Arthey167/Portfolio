#! /bin/bash

# change all files ending with .HTM to end with .html

for file in *.HTM; do
	name=$(basename "$file" .HTM)
	 mv "$file" "$name.html"
done
