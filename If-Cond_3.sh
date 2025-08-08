#!/bin/bash

USERID=$(id -u)
if [ $USERID -ne 0 ]
then
    echo " Please proceed With Installation"
else
    echo "Please proceed the Installation with sudo access"
fi