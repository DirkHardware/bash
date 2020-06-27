#!/bin/bash

colors="red black white"

#for col in '$colors'
#do 
#	echo $col
#done

var=DSLCoNnEctioN

#single comma makes fist character lowercase, double comma lowercases all
#echo ${var,}

#echo "\"I have no mouth an I must scream\""

let val=500/2

echo $val

#backticks pipe the output of a command into a variable
val2=`echo $val`

#colons are null commands. They tell the program to do nothing

var=20

if [ "$var" -lt 15 ]
then :
else
	echo $var
fi
