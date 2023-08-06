#!/bin/bash

if [[ $EUID -ne 0 ]]; then
    echo "You must be root"
    exit 1
fi

while true; do
    if ip link show zcctun0 >/dev/null 2>&1; then
        ifconfig zcctun0 down
    else
        if ip link show zcctun1 >/dev/null 2>&1; then
            ifconfig zcctun1 down
        fi
    fi
    sleep 10
done
