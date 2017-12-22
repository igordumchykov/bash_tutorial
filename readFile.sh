#!/usr/bin/env bash

counter=0
#for var in $(cat "test_file.txt")
IFS=:
for var in $PATH
do
#    let counter=$counter+1
    counter=$[$counter + 1]
    echo "$var: $counter"
done

