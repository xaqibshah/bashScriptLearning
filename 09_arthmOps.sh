#!/bin/bash

#maths calculation

#read -p

x=5
y=10

let mul=$x*$y

echo "multiplication of ${x} and ${y} are: ${mul}" 

let sum=$x+$y

echo "Addition of ${x} and ${y} are: $sum"

echo "Substraction are: $(($x-$y))" 
