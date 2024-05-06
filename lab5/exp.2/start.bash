#!/bin/bash

rm -f .completed; touch .completed

CRIT_SIZE=30000000
N=$(($CRIT_SIZE / 10))
K=30

IND=0
while [[ $IND -lt $K ]]; do
	bash newmem.bash $N &
	sleep 1

	IND=$(($IND + 1))
done

