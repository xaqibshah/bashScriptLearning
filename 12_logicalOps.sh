#!/bin/bash

#logical gates and  its representation
# AND = && Or = || Not = !

read -p "Enter your Nationality: " nationality
nationality=${nationality,,}
read -p "Enter your Age: " age

#echo $nationality
#echo $age

if [[ $nationality == "pakitan" ]] && [[ $age -ge 18 ]]
then
	echo "you can vote"

else
	echo "You can't vote"

fi
