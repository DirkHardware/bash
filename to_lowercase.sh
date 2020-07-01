#!/bin/bash

# There are a bunch of ways to convert from upper to lowercase or vice vera in BASH

smashmouth="Some Body Once Told Me The World Is Gonna Roll me"

#lowercase POSIX STANDARD

#tr
echo "tr:"
echo "$smashmouth" | tr '[:upper:]'  '[:lower:]'

#AWK
echo "AWK:"
echo "$smashmouth" | awk '{print tolower($0)}'

# NON-POSIX

#Bash 4.0
echo "${smashmouth,,}"

#sed
echo "$smashmouth" | sed -e 's/\(.*\)/\L\1/'
# apparnently this also works? What the fuck is sed?
# sed -sed -e 's/\(.*\)/\L\1/' <<< "$smashmouth"
# I guess this is just feeding smashmouth as stdin instead of using a pipe?
# This is a good explaination of what the fuck the <<< operator is
# https://unix.stackexchange.com/questions/80362/what-does-mean
