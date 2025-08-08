#!/bin/bash
USERID=$(id -u) #Stores User UID
if [ $USERID -ne 0 ] #Checks Whether UID is = 0 or not
then #!= 0 Enter into Loop
    echo " Error:Please proceed the Installation with sudo" #Prints this messages on Screen
    exit 1 #!= 0 Don't Proceed with next command and Exit
else #If =0 Enter into else loop
    echo "Please proceed the Installation"  #Prints this messages on Screen
fi #Condition Ends

Validate (){ #Function Definition
    if [ $1 -eq 0 ] #Checks If Exit code equls to Zero, Yes
    then #Enter into Loop
        echo "$2 Installation is suceefull" #Prints this messages on Screen
    else #Checks If Exit code != Zero, No
        echo " Installation is failed" #Prints this messages on Screen
        exit 1 #Condition Exits and Entire Script Fails.
    fi #Condition Ends

}

dnf list installed mysql #Checks whether My SQL Package is installed or not
if [ $? -eq 0 ] #Checks If Exit code equls to Zero, Yes
then #Enter into Loop
    echo "MySQL is already Installed..." #Prints this messages on Screen
else #Checks If Exit code != Zero, No
    echo "MYSQL is not installed Going to install.." #Prints this messages on Screen
    dnf install mysql -y #Install Mysql Package
    Validate $? "mysql" #Calls Validate Function and checks the status
    
fi #Condition Ends

dnf list installed nginx #Checks whether Nginx Package is installed or not
if [ $? -eq 0 ] #Checks If Exit code equls to Zero, Yes
then #Enter into Loop
    echo "Nginx is already Installed..." #Prints this messages on Screen
else #Checks If Exit code != Zero, No
    echo "Nginx is not installed Going to install.." #Prints this messages on Screen
    dnf install nginx -y #Install Nginx Package
    Validate $? "nginx" #Calls Validate Function and checks the status
    
fi #Condition Ends

dnf list installed python3 #Checks whether Python3 Package is installed or not
if [ $? -eq 0 ] #Checks If Exit code equls to Zero, Yes
then #Enter into Loop
    echo "Python is already Installed..." #Prints this messages on Screen
else #Checks If Exit code != Zero, No
    echo "Python is not installed Going to install.." #Prints this messages on Screen
    dnf install python3 -y #Install Python Package
    Validate $? "nginx" #Calls Validate Function and checks the status
fi #Condition Ends