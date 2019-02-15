#!/bin/bash

if [ $# -eq 2 ] ; then
	while true ; do
		output=$( ps -eo cmd,pid,%mem --sort=-%mem | head -n $(($1+1)) )
		echo "$output"
		sleep $2

        for i in $(eval echo {0..$1}); do
            tput cuu1
            tput el
        done
	done
	else
		echo "USAGE: ./3.sh <number_of_processes> <refresh_rate>"
fi


