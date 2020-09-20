#!/bin/bash

grep -ahoR "[[:alnum:]_.]\+@[[:alnum:].]\+\.[[:alnum:].]\+" /etc | awk {print} ORS=", " > emails.lst

