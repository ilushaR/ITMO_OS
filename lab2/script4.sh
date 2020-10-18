#!/bin/bash

for pid in $(ps -Ao pid | tail -n +2)
do
  dir="/proc/"$pid
  ppid=$(grep "PPid" $dir"/status" | awk '{print $2}')
  runtime=$(grep "se\.sum_exec_runtime" $dir"/sched" | awk '{print $3}')
  switches=$(grep "nr_switches" $dir"/sched" | awk '{print $3}')

  if [ -z $ppid ]
  then ppid=0
  fi
  if [ -z $runtime ] || [ -z $switches ]; then
    art=0
  else
    art=$(echo "scale=4; $runtime/$switches" | bc)
  fi

  echo "$pid $ppid $art"
done | sort -nk2 | awk '{print "ProcessID="$1" : Parent_ProcessID="$2" : Average_Running_Time="$3}' > example4.txt

