#!/bin/bash

# First create the files which are older than two weeks

# mkdir app-logs

# touch user-2024-08-18.log

# touch -d 20230801 user-2023-08-1.log  ---> to create files with specific date

# find app-logs -name "*.log" -type f -mtime +14 ---> command to find the files which were created 2 weeks back.

APP_LOGS_DIR=/home/centos/app-logs # This is the directory u have find and delete all log files which were created 2 weeks back

Date=$(date +%F:%H:%M:%S)
LOGSDIR=/home/centos/shellscript-logs
#/home/centos/shellscript-logs/scriptname-date.log
script_name=$0
LOGFILE=$LOGSDIR/$script_name-$Date.log

FILES_TO_DELETE=$(find $APP_LOGS_DIR -name "*.log" -type f -mtime +14)

echo "$FILES_TO_DELETE"

echo "script started executing at $Date"


while read line # read command reads a line from the input and assigns it to the variable line. 
do
    echo "Deleting $line" &>> $LOGFILE
    rm -rf $line
done <<< $FILES_TO_DELETE    

# you can run your scripts in two ways 1. sh script_name --> now need to have execute permission 2. ./script_name --> should have execute permission
