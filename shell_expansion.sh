#!/bin/bash
# This script is intended to show the usage of shell expansion

echo sh{ort,oot,ot}

echo st{il,al}l

# Echo current directory - similar to `pwd`
echo ~+

# Echo old `pwd` direcotry
echo ~-

# Echo a multiplication expression - does not need to be escaped
echo "$[ 2 * 2 ]"
