#!/bin/bash

awk '$3 == "(WW)"' /var/log/anaconda/X.log | sed "s/(WW)/Warning:/" > full.log
awk '$3 == "(II)"' /var/log/anaconda/X.log | sed "s/(II)/Information:/" >> full.log
