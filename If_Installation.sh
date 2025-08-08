#!/bin/bash

USERID=$(id -u)
if [ $USERID -ne 0 ]
then
    echo " Error:Please proceed the Installation with sudo"
    exit 1 #!= 0 Don't Proceed with next command
else
    echo "Please proceed the Installation"
fi
dnf install mysqloooooo -y
if [ $? -eq 0 ]
then
     echo "Installation is suceefull"
else
    echo "Installation is failed"
    exit 1
fi