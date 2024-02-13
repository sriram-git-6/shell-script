#!/bin/bash

# This script is for installing mysql and postfix

Date=$(date +%F:%H:%M:%S)
script_name=$0
LOGFILE=/tmp/$script_name-$Date.log

R="\e[31m"
G="\e[32m"
N="\e[0m"


# this function should validate previous command and inform it is success or failure.
validate(){

if [ $? -ne 0 ]    # checking exist status of previous command is 0 or not.

then 

echo "$2 is $R failure $N"

exit 1

else 

echo "$2 is $R success $N"

fi

}

# "id -u" command is used checking the user, after executing this command if it returns 0 value then it is the root user.
USERID=$(id -u)

if [ $USERID -ne 0 ]

then

echo " ERROR: Please run this script with root access"

exit 1

# else

# echo "you are root user"

fi

yum install mysql -y &>>$LOGFILE

validate $? "Installing mysql"

yum install postfix -y &>>$LOGFILE

validate $? "Installing postfix"




