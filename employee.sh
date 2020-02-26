#!/bin/bash -x
isPresent=1
checkRandom=$((RANDOM%2))
if [ $isPresent == $checkRandom ]
then 
	empRatePerHr=$((RANDOM%2000))
	empWrkHr=8;
	salary=$(($empRatePerHr*$empWrkHr))
	status="emp is Present"
else
	salary=0;
	status="emp is Absent"
fi
#echo $salary
