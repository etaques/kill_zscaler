#!/bin/bash

if [[ $EUID -ne 0 ]]; then
    echo "You must be root"
    exit 1
fi

while true; do
    for link in $(ip link list | grep -E -e 'zcctun[0-9]+' -o); do
      ifconfig $link down
    done
    sleep 10
done
