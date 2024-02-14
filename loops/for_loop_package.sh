#!/bin/bash

# This is script is for installing the packages by passing the arguments.

for i in $@
do
     yum install $i -y
done    
