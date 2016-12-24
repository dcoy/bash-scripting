#!/bin/bash
# This script is intended to show functions with parameters

# Global variable declaration
USERNAME=$1

# Function definitions - start

# Calculate age in days
funcAgeInDays() {
  echo "Hello $USERNAME, you are $1 years old."
  echo "That makes you approximately $(expr $1 \* 365) days old."
}

# Function defintions - stop

# Script start
clear
echo "Enter your age: "
read USERAGE

# Calculate the number of days
funcAgeInDays $USERAGE
