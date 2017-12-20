#!/usr/bin/env bash

n=1
echo "$n"

let "n=$n+1"
echo "$n"

echo $((n=$n+1))
echo "$n"

n=$(($n+1))
echo "$n"

: $[ n = $n + 1 ]
echo "$n"

