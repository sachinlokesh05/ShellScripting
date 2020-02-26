#!/bin/bash -x
isFulltime=2
isHalftime=1
isAbsent=0
empRatePerHr=$((RANDOM%2000))
checkRandom=$((RANDOM%3))
if [ $checkRandom == $isFulltime ]
then
	empWrkHr=8;
elif [ $checkRandom == $isHalftime ]
then 
	empWrkHr=4;
else
	empWrkHr=0;
fi
salary=$(($empRatePerHr*$empWrkHr))
#echo $salary

