#!/bin/bash

#store key values 

declare -A myArr

myArr=([name]='Saqib Shah' [age]=25 [city]=karachi)


echo "Hello, This is ${myArr[name]} and age is ${myArr[age]}"
