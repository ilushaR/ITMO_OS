#!/bin/bash

ps aux | sort -nk9 | tail -1 | awk '{print $2}'
