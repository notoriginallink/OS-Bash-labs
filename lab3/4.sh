#!/bin/bash

# run three procs in background mode
bash ./4.cycle & PID1=$!
bash ./4.cycle &
bash ./4.cycle &

# originally each process uses 28% of CPU
# was found that process starts using less than 10% when nice=6
renice -n 6 -p $PID1


CPU_LIMIT=10

while true; do
	sleep 60

	CURRENT_CPU=$(ps -p $PID1 -h -o pcpu)
	if (( $(echo "$CURRENT_CPU > $CPU_LIMIT" | bc) )); then
		NICE=$(ps -p $PID1 -h -o ni)
		if [[ $NICE -lt 19 ]]; then
			NICE=$(($NICE+1))
		fi
		
		renice -n $NICE -p $PID1
	fi

done

exit 0
