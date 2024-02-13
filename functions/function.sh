#!/bin/bash

# This script is for installing mysql.

# "id -u" command is used checking the user, after execiting this command if it returns 0 value then it is the root user.

USERID=$(id -u)

# this function should validate previous command and inform it is success or failure.
validate(){
   # $1 ---> it will receive the argument

if [ $? -ne 0 ]    # checking exist status of previous command is 0 or not.

then 

echo "$2 is failure"

exit 1

else 

echo "$2 is success"

fi

}

if [ $USERID -ne 0 ]

then

echo " ERROR: Please run this script with root access"

exit 1

# else

# echo "you are root user"

fi

yum install mysql -y

validate $? "Installing mysql"

yum install postfix -y

validate $? "Installing postfix"




