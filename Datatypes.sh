#!/bin/bash
Date=$(date)
echo "The Program Executed at:$Date"
Number1=1000
Number2=Viswa

Sum=$((Number1+Number2))
echo "The  addition of $Number1 and $Number2 is: $Sum"
Substraction=$((Number1-Number2))
echo "The Subtraction of $Number1 and $Number2 is:$Substraction"
Multiplication=$((Number1*Number2))
echo "The Multiplication of $Number1 and $Number2 is:$Multiplication"
Divison=$((Number1/Number2))
echo "The Divison of $Number1 and $Number2 is:$Divison"

echo "The Program stopped at:$Date"
