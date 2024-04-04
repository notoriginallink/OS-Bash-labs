#!/bin/bash

# named chanel 5.pipe should be created before run

MODE="+"
NUM=1
GEN_PID=$(cat .5.pid)

# start follow name chanel 
(tail -f 5.pipe) |
while true; do
	read LINE
	case "$LINE" in
		"*" | "+")
			MODE=$LINE
			echo "Mode set to $MODE"
			;;
		"QUIT")
			echo "RESULT=$NUM"
			killall tail
			kill $GEN_PID
			exit 0
			;;
		"" | *[!0-9]* | "." | *.*.*)
			echo "Invalid input"
			killall tail
			kill $GEN_PID
			exit 1
			;;
		*)
			NUM=$(( $(echo "$NUM $MODE $LINE" | bc) ))
			;;
	esac
done
