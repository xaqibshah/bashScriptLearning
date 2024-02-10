 #!/bin/bash

#for taking user Input

read -p "Enter your Marks: " marks


#here -gt use for greater then, space and indentend sensitive
if [[ $marks -gt 50 ]]
then
	echo "You are Passed"
else
	echo "You are Fail!!!!"

# use fi for ending if condition
fi




<<comment 

equal 				-eq/==
greaterthan or equal to 	-ge
lessthan or equal to 		-le
notequal			-ne/!=
greaterthan			-gt
less than			-lt

comment




