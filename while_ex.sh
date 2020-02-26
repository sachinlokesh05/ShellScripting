#!/bin/bash -x
count=0;
while [ $count -lt 10 ]
do
	echo $count
	#count=`expr $count + 1`
	(( count++ ))
done

