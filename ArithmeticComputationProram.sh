#!/bin/bash

echo "Welcome To Arithmetic Computation Program"

read -p "Enter value a: " a
read -p "Enter value b: " b
read -p "Enter value c: " c

declare -A compute

compute[1]=$((a + b * c))
compute[2]=$((a * b + c))
compute[3]=$((c + a / b))
compute[4]=$((a % b + c))

m=1

for values in ${arithmetic[@]}
do
	AllComputedValuesToArray[$m]=$values
	m=$(($m+1))
done

echo ${compute[@]}
