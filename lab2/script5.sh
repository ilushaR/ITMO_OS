#!/bin/bash

ppid_0="0"
artsum="0"
count="0"

echo -e "$(<example4.txt)" | sed "s/[^0-9.]/ /g" | 
while read str; do
  pid=$(awk '{print $1}' <<< $str)
  ppid=$(awk '{print $2}' <<< $str)
  art=$(awk '{print $3}' <<< $str)

  if [[ $ppid == $ppid_0 ]]; then
    artsum=$(echo "$artsum+$art" | bc)
    count=$(($count+1))
  else
    avg=$(echo "scale=4; $artsum/$count" | bc)
    echo "Average_Children_Running_Time_of_ParentID=$ppid_0 is $avg"
    artsum=$art
    count=1
    ppid_0=$ppid
  fi

  if [[ ! -z $pid ]]; then
    echo "ProcessID=$pid : Parent_ProcessID=$ppid : Average_Running_Time=$art"
  fi
done > example5.txt
