About Task:🔢 This is a simple shell script that takes three numbers as input from the user and finds the greatest number using conditional statements.
It is created to practice user input and if-else conditions in Bash scripting.

#!/bin/bash

echo "Enter first number:"
read num1
echo "Enter second number:"
read num2
echo "Enter third number:"
read num3

if [ $num1 -ge $num2 ] && [ $num1 -ge $num3 ]
then
    echo "Greatest number is $num1"
elif [ $num2 -ge $num1 ] && [ $num2 -ge $num3 ]
then
    echo "Greatest number is $num2"
else
    echo "Greatest number is $num3"
fi
