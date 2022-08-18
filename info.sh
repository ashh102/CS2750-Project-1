#!/bin/bash
# Ashley Maynez
# CS 2750 Summer
# Project 1


myOutput(){
	echo "info.sh param1 param2"
	echo "param1: name of file"
	echo "param2: name of directory"
}

if [ "$1" = "" ] || [ "$2" = "" ];
	then 
		myOutput
		exit 1
fi
if ! [[ -f $1 ]];
	then
		echo "$1 is not a file."
		myOutput
		exit 1
fi
if ! [[ -d $2 ]];
	then
		echo "$2 is not a directory."
		myOutput
		exit 1
fi

echo "Name of script: ./info.sh"
myOutput
echo "Current date and time: "
now="$(date)"
echo "$now"
echo "Name of user: "
echo $USER
echo "Current working directory: "
echo $PWD
echo "Name of UNIX machine: "
echo $HOSTNAME 
echo "Name of login shell: "
echo $SHELL 
echo "Contents of file: "
echo $(cat $1)
echo "Number of lines in file: "
lines = $(cat file | wc -l)
echo "$lines"
echo "Listing of required directory: "
echo $(ls $2) 
echo "Number of parameters: "
echo $# 
echo "Calendar for October of this year: "
echo $(cal -m 10 2019)
echo "Disk usage: "
echo $(df -H) 
echo "Number of users in system: "
echo $(w -h | wc -l)
echo "Current time: "
echo "$now"
