#!/bin/bash

res=""
read str

while [ "$str" != "q" ]
do
res+="$str"
read str
done

echo $res
