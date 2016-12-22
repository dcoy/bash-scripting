#!/bin/bash
# This script is intended to show the usage of the `read` command

echo "Enter your First Name: "
read FIRSTNAME
echo "Enter your Last Name: "
read LASTNAME
echo "Enter your age: "
read USERAGE
echo ""

echo "Your full name is: $FIRSTNAME $LASTNAME"
echo "In ten years, you will be $(expr $USERAGE + 10) years old."
