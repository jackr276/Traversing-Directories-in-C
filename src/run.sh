# @Author: Jack Robbins

#!/bin/bash

# Simple runner script for c programs

if [[ ! -f "$1" ]]; then
	echo "${1} is not a file"
	exit 1
fi


read -p "If program requires input, enter it here: " fl

name=$(basename -s .c "$1")

gcc -Wall -Wextra "$1" -o $name

./${name} $fl






