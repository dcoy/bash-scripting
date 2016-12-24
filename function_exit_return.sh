#!/bin/bash
# This script intends to show the usage of return and exit in functions

# Global variable declaration
YES=0
NO=1
FIRST=$1
SECOND=$2
THIRD=$3

# =========================== #
# Function definition - start #
# =========================== #

# Check command line params passed in
funcCheckParams() {
  # Did we get three?
  if [ ! -z "$THIRD" ]; then
      echo "We got three parameters."
      return $YES
  else
      echo "We did not get three parameters."
      return $NO
  fi
}

# =========================== #
# Function definitions - stop #
# =========================== #

# Script - start

funcCheckParams
RETURN_VALS=$? # 0 or 1

# Did we get 3 or not?
if [ "$RETURN_VALS" -eq "$YES" ]; then
    echo "We received three params and they are: "
    echo "Param 1: $FIRST"
    echo "Param 2: $SECOND"
    echo "Param 3: $THIRD"
    echo ""
else
    echo "Usage: function_exit_return.sh [param1] [param2] [param3]"
    exit 1
fi

# Script -stop
