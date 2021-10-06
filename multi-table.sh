#!/bin/bash

argc=${#}

if [ argc -ne 2 ]; then
	echo "ERROR : WRONG ARGUMENTS NUMBER"
	exit 1
fi

row=${1}
col=${2}

if [ row -lt 1 -o col -lt 1 ]; then
	echo "ERROR : WRONG ARGUMENTS RANGE"
	exit 1
fi

for ((i=1; i<=row; i++)); do
	for ((j=1; j<=col; j++)); do
		result=`expr $i\*$j`
		
		echo -n "$i*$j=$result "
	done
	echo
done
