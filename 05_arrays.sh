#!/bin/bash

#Array

namesArray=("ahmed" "nadir" "saqib" "inam" "shahrukh")
mixedArray=(saqib 1 15 35.5 "Hello World")
numArray=(1 3 5 7 9 11)

echo "All the vaules in array are ${mixedArray[*]}"

echo " the values is at 4th index ${namesArray[4]}"

echo "collected form Mixed Array at index 2nd ${mixedArray[2]}"
echo " No. of values, lenght of an array is ${#mixedArray[*]}"


echo "Values form index 1 - 3 is:  ${mixedArray[*]:1:3}"
echo "Previous values stored in number array is: ${numArray[*]}"

#updateing our array with new values

numArray+=(new 2 4 6)

echo "values of new array are: ${numArray[*]}"
