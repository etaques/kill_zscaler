#!/bin/bash

if [[ $EUID -ne 0 ]]; then
    echo "You must be root"
    exit 1
fi

while true; do
    ifconfig zcctun0 down
    ifconfig zcctun1 down
    sleep 5
done
