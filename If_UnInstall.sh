#!/bin/bash

USERID=$(id -u)
if [ $USERID -ne 0 ]
then
    echo " Error:Please proceed the UnInstallation with sudo"
    exit 1 #!= 0 Don't Proceed with next command
else
    echo "Please proceed the UnInstallation"
fi
dnf list installed mysql
if [ $? -eq 0 ]
then
    echo "My SQL is  Installed..."
    dnf remove mysql -y
    if [ $? -eq 0 ]
    then
        echo "UnInstallation is suceefull"
    else
        echo "UnInstallation is failed"
        exit 1
    fi
    
else
    echo "My SQL is not installed.... No issue"
    exit 1
    
fi