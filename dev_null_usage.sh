#!/bin/bash
# This script intends to show the usage
# of /dev/null

# Redirect to /dev/null
echo "This is displaying on the console."

echo "This is going into the black hole." >> /dev/null

# Redirect STDOUT to /dev/null
echo "This is standard out" 1> /dev/null

# Redirect STDERR to /dev/null
echo "This is standard error" 2> /dev/null

# Redirect STDOUT and STDERR to /dev/null
echo "This will redirect STDOUT and STDERR" > /dev/null 2>&1
