#!/bin/bash

a=$1
b=$2
c=$3

if [ "$a" -ge "$b" ] && [ "$a" -ge "$c" ]
then echo $a
elif [ "$b" -ge "$a" ] && [ "$b" -ge "$c" ]
then echo $b
else
echo $c
fi

