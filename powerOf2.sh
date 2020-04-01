#! /bin/bash

echo "Enter any number which is 2^n"
read n
a=1
while [ $n -ge 2 ]
do

	a=$(($a*2))
	echo "$a"
	n=$(($n/2))
done
