#!/usr/bin/env bash

printf "%s\n" ${RANDOM} |
while read num
do
    (( num > ${biggest:=0} )) && biggest=${num}
done
printf "The largest number is: %d\n" ${biggest}