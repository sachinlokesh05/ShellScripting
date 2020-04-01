#!/bin/bash -x
echo "Select Method for temparature conversion"
echo -e "1.Feet to Inch \n2.Feet to Meter \n3.Inch to feet \n4.Meter to Feet"
while true ;
do

	read -p "User selection is: " UserInput 
	case  $UserInput in  
			1)
			read -p "Feet: " feet
			Inch=$( expr $feet*12 | bc -l);
			;;

			2)
			read -p "Feet: " feet
			meter=$( expr $feet/3.281 | bc -l );
			;;

			3)
			read -p "Inch: " inch
			feet=$( expr $inch/12 | bc -l );
			;;

			4)
			read -p "Meter: " meter
			feet=$( expr $meter*3.281 | bc -l );
			;;			
			*)
			result="Sorry Wrong Answer,plz try Again"
			break
	esac

done


