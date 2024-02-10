#!/bin/bash

echo "Provide an option: "
echo "a for print date"
echo "b for list of Scripts"
echo "c to check the current location"

read -p "Enter your choice: " choice

<<comment case first and simple method
case $choice in 
	a) date;;
	b)ls;;
	c)pwd;;
	*)echo "Please provide a valid value"

esac
comment

#for running first method you have to  remove the comment



#second method
case $choice in
    a)
        echo "Today's date is: $(date)"
        ;;
    b)
        echo "List of scripts: $(ls *.sh)"
        ;;
    c)
        echo "Current location: $(pwd)"
        ;;
    *)
        echo "Invalid option"
        ;;
esac
