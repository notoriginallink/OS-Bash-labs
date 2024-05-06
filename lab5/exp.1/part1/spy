#!/bin/bash

rm -f exp.data; touch exp.data

while true; do
	if [[ $(top -c -n 1 -b | grep '\(mem\.bash\)' | wc -l) -eq 0 ]]; then
		break
	fi

	top -c -n 1 | sed '4,5! d' >> exp.data
	top -c -n 1 -b | grep '\(mem\.bash\)' >> exp.data
	top -c -n 1 -b | sed '8,12! d' | awk '{out = $1; for (i = 12; i <= NF; ++i) {out = out " " $i}; print out}' >> exp.data
	echo "----------" >> exp.data
	sleep 3
done


