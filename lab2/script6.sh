#!/bin/bash

grep "VmRSS" /proc/*/status | sed "s/[^0-9]\+/ /g" | sort -nk2 | tail -1 | awk '{print "PID: "$1" \t MEMORY: "$2" kB"}'
