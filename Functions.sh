#!/bin/bash -x
function Myfunc() {
	echo $1
	}

result="$( Myfunc $((RANDOM%3)) )"

 if [ $result -eq 1 ]
 then 
		echo "succes"
 else
		echo "failure"
 fi
