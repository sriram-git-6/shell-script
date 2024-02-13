#!/bin/bash

var1=$1
var2=$2
var3=$3
var4=$4

echo "script-name is : $0"
echo "variable 1: $var1"
echo "variable 2: $var2"

echo "all variables are: $@" # all the arguments passed to the script or function.

echo "number of variables passed are: $#" # display the number of arguments passed to a script or function

