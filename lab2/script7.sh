#!/bin/bash

processes=$(grep "^read_bytes" /proc/*/io | sed "s/[^0-9]\+/ /g")
echo "$processes" > test7_1.txt
sleep 5s
echo "$processes" > test7_2.txt

cat test7_1.txt |
while read line
do
  pid=$(echo "$line" | awk '{print $1}')
  mem1=$(echo "$line" | awk '{print $2}')
  #cmd=$(ps aux | awk '{if ("$2" == "$pid") print $11}')
  cmd=$(ps aux | awk '{print $11}')
  echo $pid
  echo $cmd

  mem2=$(cat test7_2.txt | awk '{if ($1 == $pid) print $2}')
  memdiff=$((mem2-mem1))
#  echo "$pid $cmd $memdiff"
done
#| sort -nrk3 | head 3 | awk '{print $1":"$2":"$3}'
