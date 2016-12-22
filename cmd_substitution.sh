#!/bin/bash
# This script is intended to show how to do simple substitution

# Allows to expand aliases in subshells
shopt -s expand_aliases

alias TODAY="date"
alias UFILES="find /home -user david.coy"

TODAYDATE=`date`
USERFILES=`find /home -user david.coy` # Will not output anything on Darwin

echo "$TODAYDAY"
echo "$USERFILES"

A=`TODAY`
B=`UFILES`

echo "With alias, TODAY is:"
echo "With alias, UFILES is:"
