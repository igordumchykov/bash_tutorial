#!/usr/bin/env bash

protocol="tcp"

echo "-------------------------------------"

case "$1" in
-p) protocol="$2"
    echo "Set protocol to $protocol"
    shift
    shift ;;
*) echo "Set protocol to default: tcp" ;;
esac

count=0
ports=()

while [ -n "$1" ]; do

    port=$1
    ports[count]=${port}
    count=$[count+1]
    shift

    echo "Get pid for port: $port"

    for pid in $(lsof -ti ${protocol}:${port})
    do
        echo "Killing PID: ${pid}"
        $(kill -9 ${pid})
    done

done

if [ ${count}=0 ]
then
    echo "No pid found for ports: ${ports[*]}"
fi

echo "-------------------------------------"


