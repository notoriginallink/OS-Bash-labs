#!/bin/bash

WEEK_DAY=$(date +"%u")
echo "5 * * * $WEEK_DAY ./1.sh" | crontab

exit 0 
