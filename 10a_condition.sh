#!/bin/bash


#describe logical operatiors using Multi line Comment
<<comment
equal 				-eq/==
Greaterthanorequalto		-ge
Lessthanorequalto		-le
NotEqual			-ne/!=
GreaterThan			-gt
lessThan			-lt

comment


read -p "Enter you marks: " marks

if [ $marks -ge 80 ]
then
	echo "First Division"
elif [ $marks -ge 60 ]
then
	echo "Second Division"
elif [ $marks -ge 40 ]
then
	echo "Third Division"
else
	echo "Fail"
fi
