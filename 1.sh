#!/bin/bash
if [ -d $1 ] ; then
	find $1 -type f | xargs du -b | sort -k1 -n -r | head -n 1
else
	echo "$1 isn't a directory"
fi
