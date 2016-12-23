#!/bin/bash
# This script is intended to show functions with bash

echo "Hello there! -- outside the function"

functionExample () {
  echo "Hello there -- inside the function"
}

singleLineFunction(){ echo "This is a single line function"; }

functionExample
singleLineFunction
