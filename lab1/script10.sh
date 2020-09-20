#!/bin/bash

man bash | sed "s/[.,()?!;=]/ /g"  | sed "s/\s/\n/g" | awk '{print tolower($0)}' | sort | uniq -c | sort -nr | awk 'length($2) > 3 {print $2}' | head -3
