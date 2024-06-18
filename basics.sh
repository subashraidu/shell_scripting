#!/bin/bash

#####################################################
# version: v1
# auther : subash
# date   : 18/6/2024
# purpose: script to learn use of variables, arthematic functions, ifcommand, forloops, pipe and echo commands,read command.
####################################################
#
echo "script to learn use of variables, arthematic functions, ifcommand, forloops, pipe and echo commands"

read -p 'enter a number1 : ' num1
read -p 'enter a number2 : ' num2

read -p 'enter a operator from the given options: +, _, *, %, / ' operator

if [$operator==+]
then 
echo "answer = $num1+$num2"
elif [$operator==-]
then 
echo "answer = $num1-$num2"
elif [$operator==*]
then 
echo "answer = $num1*$num2"
elif [$operator==%]
then 
echo "answer = $num1%$num2"
elif [$operator==/]
then 
echo "answer = $num1/$num2"
else
echo "you have entered a wrong input"
fi






