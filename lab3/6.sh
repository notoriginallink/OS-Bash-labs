#!/bin/bash

echo $$ > .6.pid

NUM=1
MODE="+"

usr1()
{
	MODE="+"
}
trap 'usr1' USR1

usr2()
{
	MODE="*"
}
trap 'usr2' USR2

term()
{
	echo "RESULT=$NUM"
	exit 0
}
trap 'term' SIGTERM

while true; do
	sleep 5
	NUM=$(( $(echo "$NUM $MODE 2" | bc) ))
	echo "CURRENT NUM=$NUM"
done
