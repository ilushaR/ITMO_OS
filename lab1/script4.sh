#!/bin/bash

if  [[ $PWD == "$HOME"* ]]
then echo $HOME
exit 0
else echo "Isn't home directory"
exit 1
fi

