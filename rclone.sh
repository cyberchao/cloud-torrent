#!/bin/bash

while true; do
    if [ $(pgrep -c -f "rclone copy /root/downloads/ gd:/data") -eq 0 ]; then
        rclone copy /root/downloads/ gd:/data
    fi
    sleep 5
done
