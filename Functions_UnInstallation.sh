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
        echo "$2 Un Installation is suceefull" #Prints this messages on Screen
    else #Checks If Exit code != Zero, No
        echo "$2 Un Installation is failed" #Prints this messages on Screen
        exit 1 #Condition Exits and Entire Script Fails.
    fi #Condition Ends

}

dnf list installed mysql #Checks whether My SQL Package is installed or not
if [ $? -eq 0 ] #Checks If Exit code equls to Zero, Yes
then #Enter into Loop
    echo "MySQL is Installed... Going to Uninstall..." #Prints this messages on Screen
    dnf remove mysql -y #Un Install Mysql Package
    Validate $? "mysql" #Calls Validate Function and checks the status
else #Checks If Exit code != Zero, No
    echo "MYSQL is Already Uninstalled..." #Prints this messages on Screen
fi #Condition Ends

dnf list installed nginx #Checks whether Nginx Package is installed or not
if [ $? -eq 0 ] #Checks If Exit code equls to Zero, Yes
then #Enter into Loop
    echo "Nginx is Installed... Going to Uninstall..." #Prints this messages on Screen
    dnf remove nginx -y #Un Install Nginx Package
    Validate $? "nginx" #Calls Validate Function and checks the status
else #Checks If Exit code != Zero, No
    echo "Nginx is Already Uninstalled..." #Prints this messages on Screen
fi #Condition Ends

dnf list installed python3 #Checks whether Python3 Package is installed or not
if [ $? -eq 0 ] #Checks If Exit code equls to Zero, Yes
then #Enter into Loop
    echo "Python is Installed...Going to Uninstal..." #Prints this messages on Screen
    dnf remove python3 -y #Un Install Python Package
    Validate $? "nginx" #Calls Validate Function and checks the status
else #Checks If Exit code != Zero, No
    echo "Python is Already Uninstalled..." #Prints this messages on Screen
fi #Condition Ends

dnf list installed nodejs #Checks whether Python3 Package is installed or not
if [ $? -eq 0 ] #Checks If Exit code equls to Zero, Yes
then #Enter into Loop
    echo "Node JS Installed...Going to Uninstall..." #Prints this messages on Screen
    dnf remove nodejs -y #un Install Python Package
    Validate $? "nodejs" #Calls Validate Function and checks the status
else #Checks If Exit code != Zero, No
    echo "Node JS Already uninstalled..." #Prints this messages on Screen
fi #Condition Ends