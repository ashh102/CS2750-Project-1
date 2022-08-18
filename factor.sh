#!/bin/bash
# Ashley Maynez
# CS 2750 Summer
# Project 1




echo "Enter a number from 10 to 100: "
read num
if ((num >= 10 && num <= 100 ));
	then
		for ((i = 2; i <= num; i++));do
			if ((num % i == 0));
				then
					prime=$i
					break
			fi
		done
		if ((prime == num));
			then
				echo "This number is prime."
		else
			echo "The smallest prime fatcor is: "
			echo $prime
		fi
fi
