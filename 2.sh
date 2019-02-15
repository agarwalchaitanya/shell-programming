#!/bin/bash
touch -t $2 ./.dev.null1
find $1 -newer ./.dev.null1 > ./.dev.null2
mkdir archive-"$2"
while read -r line
do
    mv $line ./archive-"$2"/
done < ./.dev.null2

rm ./.dev.null1 ./.dev.null2
