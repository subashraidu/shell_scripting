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



