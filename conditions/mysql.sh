#!/bin/bash

# This script is for installing mysql.

# "id -u" command is used checking the user, after execiting this command if it returns 0 value then it is the root user.

USERID=$(id -u)

if [ $USERID ne 0 ]

then

echo " ERROR: Please run this script with root access"

exit 1

# else

# echo "you are root user"

fi




