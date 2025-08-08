#!/bin/bash
USERID=$(id -u)
if [ $USERID -ne 0 ]
then
    echo " Please proceed the Installation with sudo"
    exit 1
else
    echo "Please proceed the Installation"
fi