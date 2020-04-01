#!/bin/bash -x

#constants

NUM_PEOPLES=50;
declare -A Month
count=0;

function getMonth() {
        ((month = $(( RANDOM%12 ))+1 ))
        echo $month  $count

}


function addTolist() {
        read month_value id < <(getMonth)
	Month[$(( id ))]=$month_value
        }

function LetsFindit () {
	people=1;
	while (( $people <= $NUM_PEOPLES ));
	do
	(( count++ ))
	addTolist
	(( people++ ))
	done
}

LetsFindit
echo ${Month[@]}
