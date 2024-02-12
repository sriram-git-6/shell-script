#!/bin/bash

# This script is for installing mysql.

# "id -u" command is used checking the user, after execiting this command if it returns 0 value then it is the root user.

USERID=$(id -u)

if [ $USERID -ne 0 ]

then

echo " ERROR: Please run this script with root access"

exit 1

# else

# echo "you are root user"

fi

yum install mysql -y

if [ $? -ne 0]

then 

echo "Installation of mysql is error"

exit 1

else 

echo "Installation of mysql is success"

fi

yum install postfix -y

if [ $? -ne 0 ]

then

echo "installation of postfix has got some error"

exit 1

else

echo "installation of postfix is success"

fi


