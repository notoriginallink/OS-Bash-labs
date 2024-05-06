#!/bin/bash

rm -f report2.log; touch report2.log

LOG_PERIOD=100000
STEP=0

while true; do
	X=0
	while [[ $X -lt 10 ]]; do
		INDEX=$(($STEP * 10 + X))
		ARRAY[$INDEX]=$(($INDEX % 10))
		X=$(($X + 1))
	done

	if [[ $(($STEP % $LOG_PERIOD)) -eq 0 ]]; then
		echo $(($STEP * 10)) >> report2.log
	fi
	STEP=$(($STEP + 1)) 
done
