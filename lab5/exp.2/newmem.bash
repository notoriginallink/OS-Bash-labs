#!/bin/bash

if [[ $# -ne 1 ]]; then
	echo 'Invalid input'
fi

STEP=0

while [[ $(($STEP * 10)) -le $1 ]]; do
	X=0
	while [[ $X -lt 10 ]]; do
		INDEX=$(($STEP * 10 + X))
		ARRAY[$INDEX]=$(($INDEX % 10))
		X=$(($X + 1))
	done

	STEP=$(($STEP + 1))
done

echo "OK" >> .completed
