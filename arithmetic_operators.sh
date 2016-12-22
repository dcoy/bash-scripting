#!/bin/bash
# This script is intended to show the usage of
# arithmetic operations

# Addition
expr 2 + 2

# Subtration
expr 2 - 2

# Division
expr 2 / 2

# Multiplication - * must be escaped with \
expr 2 \* 2

# Modulus
expr 15 % 2

# Command substitution
echo `expr 15 \* 2`

# Set expression to variable
MY_VARIABLE=$(expr 10 \* 20)
echo $MY_VARIABLE
