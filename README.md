# shell_scripting

what is a script?
A script is a command line program that contains a series of commands, An interpreter executes commands in the script. Anything you can type at the command line you can put it in a script. Great for automating tasks. In case of shell script, shell acts as a interpreter and executs the commands listed in the script one after other.

before a shell script is executed it should be in the executable bit set, this can be done by keeeping the file in chmod 755

to execute a script need to use sh <file name> command or ./<file name >.
script sharts with #! sighn and this is followed by the path to the bash shell program. what followes the shebang is used as the interpreter for the commands listed in the script, there are different shells which work as a interpreter

# when you execute a script that can contains a shebang what acctually happens is that, the interpreter is executed and the path used to call the script is passes as aargument to the interpreter, can check this by examining the process table 

IF A SCRIPT DOES NOT CONTAIN A SGEBANG THE COMMANS ARE EXECUTED USING YOUR SHELL. DIFFERENT SHELLS HAVE SLIGHTLY VARYING SYNTAX

in shell variables are case sensitive, By convection variables are uppercase

to use the variable procede the variable name with a dollar sign like <$variable_name> or <${variable_name}>

you can also assign the output of a command to avariable. To do this ecclose the command in paranthesis and proceed it with a dollar sign eg SERVER_NAME = $(hostname)

status - is acchived by dooing tests, createa test place a conditional statement between the brackets 
syntax [ condition to test for ]   like strings are equal, if a number grater than other or if afile exists 
test tpo see if password exists [ -e /etc/password ]    <> 

# if statements

if [ condition is true ]

then 
 command 1
 command 2

fi

# if else stattement

if [ condition is true ]
then 
 command 1
else 
 command n
 fi


 # if /elif/else

 if [ condition is true ]
 then 
  command n
elif [ condition is true ]
then
 command n
else
  command n
fi


# If you want to perform a list of actions on a list of actions use a for loop 

for VARIABLE_NAME in item1 item_n
do 
  COMMAND1
  COMMAND2
done

# Accepting user input 
syntax: read -p "PROMPT" variable_name

read -p "Enter a user name : " USER

# to access items on the command line use positional paarameters 

name of the program represented by $0
first parameter is represented by $1
to access all the items on the command line starting at $1 use the special variable $@

# # is uesed to comment in a script

# Exit status





    
  
   



commands
<sh sllepy.sh &>   meens to run in baground.
helptest
man test 





