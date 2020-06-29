#!/bin/bash

var=10

if [ "$var" != 0 ]
then
	echo "NOT"
else
	echo "YES"
fi

let var=100*3
let var2=100**3

echo "$var $var2"

# The value of var2 is conditional on the value of var 1
# If the value of var1 is less than 20, it will be the leftmost value, otherwise
# it will be the rightmost value
# Think ternary operator 

echo $(( var2 = var1<20?1:0))
