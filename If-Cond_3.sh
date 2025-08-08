#!/bin/bash

USERID=$(id -u)
if [ $USERID -nq 0 ]
then
    echo " Please proceed With Installation"
else
    echo "Please proceed the Installation with sudo access"
fi