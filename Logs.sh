#!/bin/bash
USERID=$(id -u) #Stores User UID
R="\e[31m"
G="\e[32m"
Y="\e[33m"
N="\e[0m"
LOGS_Folder="/var/log/ShellScriptlogs"
SCRIPT_NAME=$(echo $0 | cut -d "." f1)
LOG_FILE="$LOGS_Folder/SCRIPT_NAME.log"
mkdir -p $LOGS_Folder
echo "Script Executed at:$(date)" &>>$LOG_FILE
if [ $USERID -ne 0 ] #Checks Whether UID is = 0 or not
then #!= 0 Enter into Loop
    echo -e "$R Error:Please proceed the Installation with sudo $N" &>>$LOG_FILE #Prints this messages on Screen
    exit 1 #!= 0 Don't Proceed with next command and Exit
else #If =0 Enter into else loop
    echo -e "$Y Please proceed the Installation $N" &>>$LOG_FILE  #Prints this messages on Screen
fi #Condition Ends

Validate (){ #Function Definition
    if [ $1 -eq 0 ] #Checks If Exit code equls to Zero, Yes
    then #Enter into Loop
        echo -e "$G Installation of $2 is suceefull $N"  &>>$LOG_FILE #Prints this messages on Screen
    else #Checks If Exit code != Zero, No
        echo -e " $R Installation of $2 is failed $N" &>>$LOG_FILE #Prints this messages on Screen
        exit 1 #Condition Exits and Entire Script Fails.
    fi #Condition Ends

}

dnf list installed mysql #Checks whether My SQL Package is installed or not
if [ $? -eq 0 ] #Checks If Exit code equls to Zero, Yes
then #Enter into Loop
    echo -e "$Y MySQL is already Installed... $N" &>>$LOG_FILE #Prints this messages on Screen
else #Checks If Exit code != Zero, No
    echo -e "$R MYSQL is not installed Going to install.. $N" &>>$LOG_FILE #Prints this messages on Screen
    dnf install mysql -y #Install Mysql Package
    Validate $? "MYSQL" #Calls Validate Function and checks the status
    
fi #Condition Ends

dnf list installed nginx #Checks whether Nginx Package is installed or not
if [ $? -eq 0 ] #Checks If Exit code equls to Zero, Yes
then #Enter into Loop
    echo -e "$Y  Nginx is already Installed... $N" &>>$LOG_FILE #Prints this messages on Screen
    else #Checks If Exit code != Zero, No
    echo -e "$R Nginx is not installed Going to install.. $N" &>>$LOG_FILE #Prints this messages on Screen
    dnf install nginx -y #Install Nginx Package
    Validate $? "Nginx" #Calls Validate Function and checks the status
    
fi #Condition Ends

dnf list installed python3 #Checks whether Python3 Package is installed or not
if [ $? -eq 0 ] #Checks If Exit code equls to Zero, Yes
then #Enter into Loop
    echo -e "$Y Python is already Installed... $N" &>>$LOG_FILE #Prints this messages on Screen
else #Checks If Exit code != Zero, No
    echo -e "$R Python is not installed Going to install.. $N" &>>$LOG_FILE #Prints this messages on Screen
    dnf install python3 -y #Install Python Package
    Validate $? "Python3" #Calls Validate Function and checks the status
fi #Condition Ends

dnf list installed nodejs #Checks whether Python3 Package is installed or not
if [ $? -eq 0 ] #Checks If Exit code equls to Zero, Yes
then #Enter into Loop
    echo -e "$Y Node JS is already Installed... $N" &>>$LOG_FILE #Prints this messages on Screen
else #Checks If Exit code != Zero, No
    echo -e "$R Node JS is not installed Going to install.. $N" &>>$LOG_FILE #Prints this messages on Screen
    dnf install nodejs -y #Install Python Package
    Validate $? "Nodejs" #Calls Validate Function and checks the status
fi #Condition Ends