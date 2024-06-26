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

File and Directory Operations:

    ls: List directory contents.
    cd: Change directory.
    pwd: Print working directory.
    mkdir: Make directories.
    rm: Remove files or directories.
    cp: Copy files or directories.
    mv: Move (rename) files or directories.
    touch: Create an empty file or update file timestamps.

File Viewing and Editing:

    cat: Concatenate and display files.
    less: View file contents interactively.
    head: Output the first part of files.
    tail: Output the last part of files.
    nano, vi, vim: Text editors for creating or modifying files.

System Information and Monitoring:

    uname -a: Display system information.
    top: Display Linux tasks.
    htop: Interactive process viewer.
    free: Display amount of free and used memory.
    df: Report file system disk space usage.
    du: Estimate file space usage.
    uptime: Display how long the system has been running.

User Management:

    sudo: Execute a command as the superuser.
    su: Switch user or become superuser.
    useradd: Create a new user or update default new user information.
    usermod: Modify a user account.
    passwd: Change user password.

Package Management:

    apt: Advanced Package Tool, used for package management in Debian-based systems (e.g., Ubuntu).
        apt update: Update the package index.
        apt upgrade: Upgrade all installed packages.
        apt install <package>: Install a package.
        apt remove <package>: Remove a package.
    yum or dnf: Package managers for Red Hat-based systems (e.g., CentOS, Fedora).

Networking:

    ifconfig or ip: Configure network interfaces.
    ping: Check the network connection to a remote host.
    traceroute: Print the route packets take to network host.
    netstat: Print network connections, routing tables, interface statistics, masquerade connections, and multicast memberships.
    ssh: OpenSSH SSH client (remote login program).

System Maintenance and Troubleshooting:

    systemctl: Control the systemd system and service manager.
        systemctl start <service>: Start a service.
        systemctl stop <service>: Stop a service.
        systemctl restart <service>: Restart a service.
        systemctl status <service>: Display the status of a service.
    journalctl: Query the systemd journal or logs.
    dmesg: Print or control the kernel ring buffer.
    iptables (or firewalld): Configure firewall rules.

Compression and Archiving:

    tar: Store and extract files from an archive file.
        tar -cvf archive.tar files: Create a tar archive.
        tar -xvf archive.tar: Extract files from a tar archive.
    gzip, bzip2, xz: Compress or decompress files.

System Utilities:

    cron or crontab: Schedule tasks to run at fixed times or intervals.
    watch: Execute a program periodically, showing output fullscreen.
    grep: Print lines matching a pattern.
    awk or sed: Text processing and pattern matching tools.
    find: Search for files in a directory hierarchy.

| <pipe command sends the output of the first command as a input to second>
date <command gives you server date and time> date is a default shell command it sends the output to stdin, and pipecommand only recives the input from the output got from this command ,so as date is sending data to stdin.

awk <prattern scanning and processing language>

ps -ef | grep amazon | awk -F" " '{print $2}'

set -e <exits the script when there is a error>
set -o pipefail <pipefail>

set -exo pipefail

curl -x GET swiggy.com  <directly gets the information>

wget <command will download and file the data>

sudo find / -name pam.d  <it will find by the location you give>

sudo su - <switch to root user>

su  kiran <switch user to kiran>

trap <command is used for trapping signals> (signal is passed to kill a specific file)  (ctrl c is used to stop execution of a script )

kill -9 <process id> (instant kill the process with this process id)

netstat, short for network statistics, is a command-line tool used to display network connections, routing tables, interface statistics, masquerade connections, and multicast memberships. It is available on most Unix-like operating systems and Windows.


# shell scripts can be written for a wide range of tasks and purposes. Here are some examples:

System Administration:

Automating backup processes.
Monitoring system resources and generating reports.
Managing user accounts and permissions.
File Management:

Sorting and organizing files based on criteria (date, size, type).
Renaming multiple files based on patterns.
Checking and maintaining file integrity.
Automation:

Running repetitive tasks on a schedule (cron jobs).
Handling batch processing of data files.
Automating software deployment and updates.
Text Processing:

Parsing log files and extracting relevant information.
Generating and formatting reports from structured data.
Searching and replacing text in multiple files.
Networking:

Monitoring network connectivity and performance.
Automating VPN or SSH connections.
Fetching data from web APIs.
Application Deployment:

Setting up environments and configurations.
Managing dependencies and starting/stopping services.
Handling error conditions and logging.
Data Manipulation:

Converting file formats (e.g., CSV to JSON).
Processing data streams in real-time.
Generating statistics and summaries from large datasets.
Security:

Checking system vulnerabilities and applying patches.
Auditing user activities and access logs.
Implementing custom firewall rules.
Customization and Personalization:

Creating personalized welcome messages or notifications.
Customizing desktop environments or terminal settings.
Managing personal preferences and settings across different systems.
Testing and Debugging:

Writing test suites for applications.
Simulating user interactions for testing purposes.
Debugging scripts and applications in development.
Shell scripts are versatile and can be adapted to almost any task that involves automation, data processing, or system management on Unix-like systems. Their flexibility makes them invaluable for both personal and professional use cases.





+ AWK command
Awk is a scripting language used for manipulating data and generating reports. The awk command programming language requires no compiling and allows the user to use variables, numeric functions, string functions, and logical operators.

Awk is a utility that enables a programmer to write tiny but effective programs in the form of statements that define text patterns that are to be searched for in each line of a document and the action that is to be taken when a match is found within a line. Awk is mostly used for pattern scanning and processing. It searches one or more files to see if they contain lines that matches with the specified patterns and then perform the associated actions. 

1. AWK Operations: 
(a) Scans a file line by line 
(b) Splits each input line into fields 
(c) Compares input line/fields to pattern 
(d) Performs action(s) on matched lines 

2. Useful For: 
(a) Transform data files 
(b) Produce formatted reports 

3. Programming Constructs: 
(a) Format output lines 
(b) Arithmetic and string operations 
(c) Conditionals and loops


awk options 'selection _criteria {action }' input-file > output-file

-f program-file : Reads the AWK program source from the file 
                  program-file, instead of from the 
                  first command line argument.
-F fs            : Use fs for the input field separator


example:

awk '/manager/ {print}' employee.txt 

ajay manager account 45000
varun manager sales 50000
amit manager account 47000

awk '{print $1,$4}' employee.txt 

ajay 45000
sunil 25000
varun 50000

Awk’s built-in variables include the field variables—$1, $2, $3, and so on ($0 is the entire line) — that break a line of text into individual words or pieces called fields.
NR: NR command keeps a current count of the number of input records. Remember that records are usually lines. Awk command performs the pattern/action statements once for each record in a file.
NF: NF command keeps a count of the number of fields within the current input record.
FS: FS command contains the field separator character which is used to divide fields on the input line. The default is “white space”, meaning space and tab characters. FS can be reassigned to another character (typically in BEGIN) to change the field separator. 
RS: RS command stores the current record separator character. Since, by default, an input line is the input record, the default record separator character is a newline. 
OFS: OFS command stores the output field separator, which separates the fields when Awk prints them. The default is a blank space. Whenever print has several parameters separated with commas, it will print the value of OFS in between each parameter. 
ORS: ORS command stores the output record separator, which separates the output lines when Awk prints them. The default is a newline character. print automatically outputs the contents of ORS at the end of whatever it is given to print. 

awk '{print NR,$0}' employee.txt 

1 ajay manager account 45000
2 sunil clerk account 25000
3 varun manager sales 50000

awk 'NR==3, NR==6 {print NR,$0}' employee.txt 

3 varun manager sales 50000
4 amit manager account 47000
5 tarun peon sales 15000
6 deepak clerk sales 23000

awk '{print $1,$NF}' employee.txt 
ajay 45000
sunil 25000






