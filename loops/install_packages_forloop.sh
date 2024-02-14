#!/bin/bash

# create the log file

Date=$(date +%F)
LOGSDIR=/home/centos/shellscript-logs
#/home/centos/shellscript-logs/scriptname-date.log
script_name=$0
LOGFILE=$LOGSDIR/$script_name-$Date.log

USERID=$(id -u)
R="\e[31m"
G="\e[32m"
N="\e[0m"
Y="\e[33m"

# check whether the user has root access or not.

if [ $USERID -ne 0 ];
then
    echo -e "$R Error: Please run the script with root access $N"
    exit 1
fi    

VALIDATE(){
    if [ $1 -ne 0 ];
    then 
      echo -e "Installing $2 ...$R FAILURE $N"
      exit 1
    else
      echo -e "Installing $2 ... $G SUCCESS $N"  
    fi  
}

# check whether the packages are installed or not and install the packages that are not intalled.

for i in $@
do 
    yum list installed $i &>>$LOGFILE
    if [ $? -ne 0 ]
    then 
        echo "$i is not installed, lets install it"
        yum install $i -y &>>$LOGFILE
        VALIDATE $? "$i"
    else
        echo -e "$Y $i is already installed $N"

    fi
done    