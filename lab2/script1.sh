#!/bin/bash

processes=$(ps -U user | tail -n +2 | awk '{print $1":"$4}')
echo "$processes" | wc -l > example1.txt
echo "$processes" >> example1.txt
