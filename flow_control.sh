# Conditions
var=1
# NOTE! that in order for conditions brackets to work
# there has to be a space between the beginning and end of the command, and 
# the brackets because BASH sux

if [ "$var" -gt 0 ] || [ "$var" -eq 10 ]
then
        echo "One or both of the conditions have been met." 
else
        echo "Neither of these conditions is true."
fi

# if we wanted multiple conditions satisfied it would be like 
newvar=-10
if [ "$newvar" -gt 0 ] && [ "$newvar" -eq 10 ];then 
        echo "Both of these conditions are true."
elif [ "$newvar" -gt 0 ] || [ "$newvar" -eq 11 ];then 
        echo "One of these conditions is true."
else
      echo "Neither of these conditions is true."
fi

#nested flow control


