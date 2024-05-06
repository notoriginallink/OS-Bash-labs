#!/bin/bash

DATA="exp.data"
TIME="exp.data.time"
MEMORY="exp.data.memory"
SWAP="exp.data.swap"

# Form file with time
echo "TIME(s)" > $TIME
awk 'NR % 9 == 0 {print ((NR / 9) * 3)}' $DATA >> $TIME

# Form memory usage file
echo "TOTAL FREE USED BUF/CACHE" > $MEMORY
awk 'NR % 9 == 1 {print $4 " " $6 " " $8 " " $10}' $DATA >> $MEMORY

# Form swap usage file
echo "TOTAL FREE USED AVAIL" > $SWAP
awk 'NR % 9 == 2 {print $3 " " $5 " " $7 " " $9}' $DATA >>  $SWAP

echo "experiment data processed"
