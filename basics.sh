#!/bin/bash

#####################################################
# version: v1
# author : subash
# date   : 18/6/2024
# purpose: script to learn use of variables, arithmetic functions, if command, for loops, pipe and echo commands, read command.
####################################################

echo "Script to learn use of variables, arithmetic functions, if command, for loops, pipe and echo commands"

read -p 'Enter a number1 : ' num1
read -p 'Enter a number2 : ' num2

read -p 'Enter an operator from the given options: +, -, *, %, / ' operator

if [ "$operator" == "+" ]; then
    echo "Answer = $(($num1 + $num2))"
elif [ "$operator" == "-" ]; then
    echo "Answer = $(($num1 - $num2))"
elif [ "$operator" == "*" ]; then
    echo "Answer = $(($num1 * $num2))"
elif [ "$operator" == "%" ]; then
    echo "Answer = $(($num1 % $num2))"
elif [ "$operator" == "/" ]; then
    echo "Answer = $(($num1 / $num2))"
else
    echo "You have entered a wrong input"
fi
