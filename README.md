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











