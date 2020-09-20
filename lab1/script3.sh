#!/bin/bash

echo -e "1. nano \n2. vi \n3. links \n4. exit \n"

read command

if [[ $command -eq 1 ]]
then nano
elif [[ $command -eq 2 ]]
then vi
elif [[ $command -eq 3 ]]
then links
elif [[ $command -eq 4 ]]
then exit
else echo "Invalid command"
fi
