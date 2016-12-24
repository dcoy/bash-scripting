#!/bin/bash
# This script is intended to show how to check CLI parameters

if [ "$#" != "3" ]; then
    echo "USAGE: checkargs.sh [param1] [param2] [param3]"
    exit 300
fi

echo "I live! I got what I needed"
