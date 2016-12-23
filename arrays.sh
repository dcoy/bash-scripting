#!/bin/bash
# This script intends to show the usage of arrays in bash

MYARRAY=("First" "Second" "Third")
# will only echo 0 index value of array
echo $MYARRAY

# Enclose variable in brackets with index position to echo
echo ${MYARRAY[0]}
echo ${MYARRAY[1]}
echo ${MYARRAY[2]}

# Echo all items in array
echo ${MYARRAY[*]}

MYARRAY[3]="Fourth"
echo ${MYARRAY[*]}

# Comma delimited arrays are bad - bash treats the array elements
# as a single array element
NEWARRAY=("First","Second","Third")
echo $NEWARRAY
echo ${NEWARRAY[0]}

# Simple array list and loop for display

SERVERLIST=("websrv01" "websrv02" "websrv03" "websrv04")
COUNT=0
for INDEX in ${SERVERLIST[@]}; do
    echo "Processing Server: ${SERVERLIST[COUNT]}"
    COUNT="$(expr $COUNT + 1)"
done
