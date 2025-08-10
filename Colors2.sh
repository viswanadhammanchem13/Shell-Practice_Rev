#!/bin/bash
USERID=$(id -u) #Stores User UID
R="\e[31m"
G="\e[32m"
Y="\e[33m"
N="\e[0m"
if [ $USERID -ne 0 ] #Checks Whether UID is = 0 or not
then #!= 0 Enter into Loop
    echo -e "$R Error:Please proceed the Installation with sudo $N" #Prints this messages on Screen
    exit 1 #!= 0 Don't Proceed with next command and Exit
else #If =0 Enter into else loop
    echo -e "$Y Please proceed the Installation $N"  #Prints this messages on Screen
fi #Condition Ends

Validate (){ #Function Definition
    if [ $1 -eq 0 ] #Checks If Exit code equls to Zero, Yes
    then #Enter into Loop
        echo -e "$G $2 Installation is suceefull $N" #Prints this messages on Screen
    else #Checks If Exit code != Zero, No
        echo -e " $R $2 Installation is failed $N" #Prints this messages on Screen
        exit 1 #Condition Exits and Entire Script Fails.
    fi #Condition Ends

}

dnf list installed mysql #Checks whether My SQL Package is installed or not
if [ $? -eq 0 ] #Checks If Exit code equls to Zero, Yes
then #Enter into Loop
    echo -e "$Y MySQL is already Installed... $N" #Prints this messages on Screen
else #Checks If Exit code != Zero, No
    echo -e "$R MYSQL is not installed Going to install.. $N" #Prints this messages on Screen
    dnf install mysql -y #Install Mysql Package
    Validate $? "mysql" #Calls Validate Function and checks the status
    
fi #Condition Ends

dnf list installed nginx #Checks whether Nginx Package is installed or not
if [ $? -eq 0 ] #Checks If Exit code equls to Zero, Yes
then #Enter into Loop
    echo -e "$Y  Nginx is already Installed... $N" #Prints this messages on Screen
    else #Checks If Exit code != Zero, No
    echo -e "$R Nginx is not installed Going to install.. $N" #Prints this messages on Screen
    dnf install nginx -y #Install Nginx Package
    Validate $? "nginx" #Calls Validate Function and checks the status
    
fi #Condition Ends

dnf list installed python3 #Checks whether Python3 Package is installed or not
if [ $? -eq 0 ] #Checks If Exit code equls to Zero, Yes
then #Enter into Loop
    echo -e "$Y Python is already Installed... $N" #Prints this messages on Screen
else #Checks If Exit code != Zero, No
    echo -e "$R Python is not installed Going to install.. $N" #Prints this messages on Screen
    dnf install python3 -y #Install Python Package
    Validate $? "nginx" #Calls Validate Function and checks the status
fi #Condition Ends

dnf list installed nodejs #Checks whether Python3 Package is installed or not
if [ $? -eq 0 ] #Checks If Exit code equls to Zero, Yes
then #Enter into Loop
    echo -e "$Y Node JS is already Installed... $N" #Prints this messages on Screen
else #Checks If Exit code != Zero, No
    echo -e "$R Node JS is not installed Going to install.. $N" #Prints this messages on Screen
    dnf install nodejs -y #Install Python Package
    Validate $? "nodejs" #Calls Validate Function and checks the status
fi #Condition Ends