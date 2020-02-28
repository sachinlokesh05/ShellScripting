#!/bin/bash -x
#constants for the programs
is_Fulltime=2;
is_Halftime=1;
max_WrkHr_In_Month=40;
Max_Wrkdays_In_Month=20;
empRatePerHr=20;

#variables
totalWrkHr=0;
totalWrkDays=0;

function getWrkHrPerDay () {
	case $1 in
			$is_Fulltime)
			empWrkHr=8;
			;;
			$is_Halftime)
			empWrkHr=4;
			;;
			*)
			empWrkHr=0;
			;;
	esac
	echo $empWrkHr;
}

while [[ $totalWrkDays -lt $Max_Wrkdays_In_Month && 
			$totalWrkHr -lt $max_WrkHr_In_Month ]];
do
	((totalWrkDays++))
		workHr="$( getWrkHrPerDay $((RANDOM%3)) )";
		totalWrkHr=$(( $totalWrkHr+$workHr ));
done

totalSalary=$(( $totalWrkHr*$empRatePerHr ))

