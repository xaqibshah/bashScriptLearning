#!/bin/bash

myVar="Hey buddy this is saqib"

myVarLenght=${#myVar}

echo "Length of the myVar is $myVarLenght"

echo "Upper Cas is:--------- ${myVar^^}"

echo "lower cas is:-------- ${myVar,,}"


# to replace a string


newVar=${myVar/buddy/Saqib}

echo "New Var is ---- ${newVar}"


#to Slice String 
slice=${myVar:4:5}

echo "After Slice value:---  ${slice}"
