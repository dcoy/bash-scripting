#!/bin/bash
# This is to show exit status types
# It will use `echo $?` to display exit status
# 0 is success, non-zero is failure
# `set -e` wille exit the script once an error occurs
set -e

expr 1 + 5
echo $?

rm test.txt
echo $?

expr 10 + 10
echo $?
