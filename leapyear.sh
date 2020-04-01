#! /bin/bash

echo "Enter any year between 1 - 9999"
read n
if [ $n -lt 1 ] || [ $n -gt 9999 ]
then
 	echo "Invalid input $n"
	exit 1
fi

if [ $(($n%400)) -eq 0 ] || [ $(($n%100)) -ne 0 ] && [ $(($n%4)) -eq 0 ]
then
	echo "$n is a leap year"
else
	echo "$n is not a leap year"
fi
