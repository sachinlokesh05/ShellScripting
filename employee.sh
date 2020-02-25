#!/bin/bash -x
isPresent=1
checkRandom=$((RANDOM%2))
if [ $isPresent == $checkRandom ]
then 
	empRatePerHr=$((RANDOM%2000))
	empWrkHr=8;
	salary=$(($empRatePerHr*$empWrkHr))
	echo "emp is Present"
else
	salary=0;
	echo "emp is Absent"
fi
echo $salary
