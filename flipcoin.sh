echo "Enter number of times you want to flip the coin"
read n
h=0
t=0
while((n>0))
do
	a=0.$((RANDOM))
	if (( $( echo $a 0.5 | awk '{print ($1>$2)}') ))
	then
		echo "TAIL"
		((t++))
	else
		echo "HEAD"
		((h++))
	fi
((n--))
done

echo "Total head $h and head% = $((h*100/((h+t))))%"
echo "Total tails $t and teails% = $((t*100/((h+t))))%"

