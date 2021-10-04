#!/bin/bash

echo "Welcome To Arithmetic Computation Program"

read -p "Enter value a: " a
read -p "Enter value b: " b
read -p "Enter value c: " c

Compute1=$((a + b * c))

echo $Compute1;
