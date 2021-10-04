#!/bin/bash

echo "Welcome To Arithmetic Computation Program"

read -p "Enter value a: " a
read -p "Enter value b: " b
read -p "Enter value c: " c

Compute1=$((a + b * c))
Compute2=$((a * b + c))
Compute3=$((c + a / b))
Compute4=$((a % b + c))

echo $Compute1;
echo $Compute2;
echo $Compute3;
echo $Compute4;

