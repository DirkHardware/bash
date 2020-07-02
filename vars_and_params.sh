#!/bin/bash

var=10
echo $var

unset var 

#you can use unset to nullify values
echo $var

# read is the BASH equivalent of Pythons input() or Ruby's puts()
# echo "Type in a value";
# read var2
# echo $var2

# quote marks around variabls preserve true whitespacing, observe
var="Imperial battleship       HALT!   THE FLOW, OF TIME." 

# echo $var 
# whitespacing not preserved

# echo "$var"
# whitespacing preserved

#command output can be used as var input if backticks are used.
# Take ls for instance
dir_contents=`ls ~/Pictures`
# parens will do in a pinch so long as you add a dollar sign
dir_contents=$(ls ~/Pictures)
# echo "$dir_contents"

num=1100
let "num -= 10"
echo "$num"

#this sy ntax indicates that we are replacing the literal 10 in variable num with the character B. This is good for translating hex. 	
var=${num/10/B}
echo "$var"

#BASH is pretty strong about its typing. When a variable is created, it auto declares its type. 

var=A0 # This is a string for instance, because of the A.

let "var +=1" # When an arithmatic operation is performed on a string, it automatically becomes a type int with a value of zero. Incrementing here using let makes it an int, and gives it a value of 1. 
echo $var

var = hey1100

echo "$var"

num=${var/hey/20}
echo "$num"
let "num +=1"
echo "$num"
# See? Doesn't matter what ints are already in it, it wipes it to zero.


