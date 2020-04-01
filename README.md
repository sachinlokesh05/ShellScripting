The following examples are valid variable names −

- _ali
- token_a
- var_1
- var_2

variable_name=variable_value

VAR1="Zara Ali"
VAR2=100

------------
#!/bin/sh

NAME="Zara Ali"
echo $NAME
-------------

Read-only Variables
-----------
Live Demo
#!/bin/sh

NAME="Zara Ali"
readonly NAME
NAME="Qadiri"
-------------
/bin/sh: NAME: This variable is read only.
-------------
Unsetting Variables
------------
#!/bin/sh

NAME="Zara Ali"
unset NAME
echo $NAME
-----------
note:The above example does not print anything. You cannot use the unset command to unset variables that are marked readonly.
------------------
Variable Types

Local Variables − A local variable is a variable that is present within the current instance of the shell. It is not available to programs that are started by the shell. They are set at the command prompt.

Environment Variables − An environment variable is available to any child process of the shell. Some programs need environment variables in order to function correctly. Usually, a shell script defines only those environment variables that are needed by the programs that it runs.

Shell Variables − A shell variable is a special variable that is set by the shell and is required by the shell in order to function correctly. Some of these variables are environment variables whereas others are local variables.

-----------------------------
Special Parameters $* and $@

There are special parameters that allow accessing all the command-line arguments at once. $* and $@ both will act the same unless they are enclosed in double quotes, "".

-------------------------
#!/bin/sh

for TOKEN in $*
do
   echo $TOKEN
done
---
$./test.sh Zara Ali 10 Years Old
Zara
Ali
10
Years
Old
----------------------------
Defining Array Values

syntax:
	array_name[index]=value
As an example, the following commands −

NAME[0]="Zara"
NAME[1]="Qadir"
NAME[2]="Mahnaz"
NAME[3]="Ayan"
NAME[4]="Daisy"

If you are using the bash shell, here is the syntax of array initialization −

array_name=(value1 ... valuen)

Accessing Array Values

${array_name[index]}
----------------------------------
#!/bin/sh

NAME[0]="Zara"
NAME[1]="Qadir"
NAME[2]="Mahnaz"
NAME[3]="Ayan"
NAME[4]="Daisy"
echo "First Index: ${NAME[0]}"
echo "Second Index: ${NAME[1]}"
---------------------------------
$./test.sh
First Index: Zara
Second Index: Qadir
-------------------------------------
You can access all the items in an array in one of the following ways −

${array_name[*]}
${array_name[@]}

We will now discuss the following operators −

--Arithmetic Operators
--Relational Operators
--Boolean Operators
--String Operators
--File Test Operators

add of two numbers--
----------------------
#!/bin/sh

val=`expr 2 + 2`
echo "Total value : $val"
-------------------------

Relational Operators

-eq
----------
Checks if the value of two operands are equal or not; if yes, then the condition becomes true.

-ne
----------
Checks if the value of two operands are equal or not; if values are not equal, then the condition becomes true.

-gt
-----------
Checks if the value of left operand is greater than the value of right operand; if yes, then the condition becomes true.

-lt
----------
Checks if the value of left operand is less than the value of right operand; if yes, then the condition becomes true.

-ge
---------
Checks if the value of left operand is greater than or equal to the value of right operand; if yes, then the condition becomes true.

-le
--------
Checks if the value of left operand is less than or equal to the value of right operand; if yes, then the condition becomes true.

Boolean Operators:-

 !
-------
This is logical negation. This inverts a true condition into false and vice versa.

 -o
------
This is logical OR. If one of the operands is true, then the condition becomes true.	

ex:
[ $a -lt 20 -o $b -gt 100 ] is true.


-a	
------
This is logical AND. If both the operands are true, then the condition becomes true otherwise false.

ex:
[ $a -lt 20 -a $b -gt 100 ] is false.


String Operators:-

 =
----
Checks if the value of two operands are equal or not; if yes, then the condition becomes true.


 !=
-----
Checks if the value of two operands are equal or not; if values are not equal then the condition becomes true.

 -z
------
Checks if the given string operand size is zero; if it is zero length, then it returns true.

 -n 
------
Checks if the given string operand size is non-zero; if it is nonzero length, then it returns true.

str 
------
Checks if str is not the empty string; if it is empty, then it returns false.

