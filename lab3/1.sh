#!/bin/bash

DATE=$(date +"%F_%R")

mkdir ~/test 2>/dev/null &&
{
	echo "catalog test was created successfully" > ~/report
	touch ~/test/$DATE
}

ping -c 1 "www.net_nikogo.ru" 2>/dev/null ||
{
	echo "[$DATE]: server www.net_nikogo.ru doesn't respond" >> ~/report	
}

exit 0
