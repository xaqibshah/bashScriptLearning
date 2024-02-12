#!bin/bash

#script to show how to use variables

a=10
name="Saqib Shah"
age=25

echo "My name is $name and age is $age "

# store commad values in a variable

HOSTNAME=$(hostname)
currentWorking=$(pwd)

echo "my machine name is $HOSTNAME and my current working directory is $currentWorking "
