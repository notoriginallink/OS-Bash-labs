#!/bin/bash

ls -1 -a /home/user/source/ | while read -r LINE; do
	if [[ $LINE == '.' ]] || [[ $LINE == '..' ]]; then
		continue
	fi
	echo $LINE
done
