#!/bin/bash

# parenthesis are used to store groups of commans inside of them
# a group of commands in parenthesis will be starte inside a subshell, which
# will create a scope issue where the shell cannot read the subshell


var=5
(var=10;)

echo $var

#parenthesis are also used for array initialization
Colors=(red white brown purple)
echo $Colors

# Escape characters followed by a character on either side of values groupe in curly braces will surround each string with those same characters
echo \"{test1,test2,test3}\"

echo {0..9}

var=1
# Additional conditions
if [ "$var" -gt 0 ] || [ "$var" -eq 10]
then
	echo "One or both of the conditions have been met." 
else
	echo "Neither of these conditions is true."
fi

# if we wanted both conditions satisfied it would be like 
newvar=10
if [ "$newvar" -gt 0 ] && [ "$newvar" -eq 10 ];then 
	echo "Both of these conditions are true."
elif [ "$newvar" -gt 0 ] || [ "$newvar" -eq 11 ];then 
	echo "One of these conditions is true."
#else
#	echo "Neither of these conditions is true."
fi

#nested flow control

var=1 -
