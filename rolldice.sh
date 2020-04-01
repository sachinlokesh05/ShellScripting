#!/bin/bash -x
#Roll a die and find the number between 1 to 6
#Repeat the Die roll and find the result each time
#Store the result in a dictionary
#Take user input for number of times to roll the die 'n'
#Repeat 'n' number of times and store in the dictionary

declare -A Rolls=(  )
diceTimes=0
echo "--------------Roll the dice------------------"
function die(){
DIE=1
((DIE+=$((RANDOM%6)) ))
echo $DIE
}
function roll(){
roll=$(die)
Rolls[$diceTimes]=$roll
echo "$diceTimes------>>roll out value= $roll"
((diceTimes++))

}
function rollTheDice(){
echo "Enter the number of times you want to roll the dice "
read n
echo "You chose to roll $n times"
while [[ $diceTimes -lt $n ]];
do
roll
done
}

rollTheDice
echo ${Rolls[@]}
