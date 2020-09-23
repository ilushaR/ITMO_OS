#!/bin/bash

man bash | grep -o "[[:alpha:]-]\{4,\}" | awk '{print tolower($0)}' | sort | uniq -c | sort -nr | awk '{print $2}' | head -3
