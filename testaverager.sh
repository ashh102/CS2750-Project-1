#!/bin/bash
# Ashley Maynez
# CS 2750 Summer
# Project 1
# Score averager


re='^[0-9]+$'
for var in "$@"
do
	if [[ $var =~ $re ]]; 
		then
			sum=$((sum + var))
			count=$((count+1))
	fi
done

percent=`expr $sum / $count`
if [ $percent -lt 70 ]
	then
		echo "Sorry $1 $2 but you will have to retake the class!"
else
	echo "Congratulations $1 $2, you passed with an average of $percent!"
fi


