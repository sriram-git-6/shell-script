#!/bin/bash

persons=("rohit" "kohli" "sachin") # this is called as an array to hold multiple values we use array.

echo "first person is: ${persons[0]}"

echo "all persons in the array are: ${persons[@]}"