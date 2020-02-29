#!/bin/bash -x

is_fulltime=2;
is_halftime=1;
max_wrk_days_month=20;
max_wrk_hrs_month=40;
empRatePerHr=20;
total_wrk_hrs=0;
total_wrk_days=0;
total_emp_salary=0;

declare -A Salary=()

function getWrkHrs(){

	case $1 in
		$is_fulltime)
		empWrkHrs=8;
		;;
		$is_halftime)
		empWrkHrs=4;
		;;
		*)
		empWrkHrs=0;
		;;
	esac
	echo $empWrkHrs
}

function getempSalary () {
	
	empSalaryPerDay=$(( $1 * $empRatePerHr ));
	echo $empSalaryPerDay;
}
 
while [[ $max_wrk_days_month -gt $total_wrk_days &&
	$max_wrk_hrs_month -gt $total_wrk_hrs ]]
do 	
	((total_wrk_days++))
	result=$(getWrkHrs $((RANDOM%3)) );
	empSalaryPerDay=$( getempSalary $result );
#	empSalaryPerDay=$(( $result * $empRatePerHr ));
	Salary[$total_wrk_days]=$empSalaryPerDay;
	echo $total_wrk_days----------$empSalaryPerDay
	(( totalSalary+=empSalaryPerDay ));
	((total_wrk_hrs+=result));
	
done 

echo ${Salary[@]}
echo $totalSalary
echo $total_wrk_days;
echo $total_wrk_hrs;
