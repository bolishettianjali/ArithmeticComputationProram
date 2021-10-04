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

for values in ${compute[@]}
do
	computeToArray[$m]=$values
	m=$(($m+1))
done

for ((i=1; i<5; i++))
do
 	for((j=1; j<5-1; j++))
	do

		if [ ${computeToArray[$j]} -gt ${computeToArray[$(($j+1))]} ]
		then
			temp=${computeToArray[$j]}
			computeToArray[$j]=${computeToArray[$(($j+1))]}
			computeToArray[$(($j+1))]=$temp
		fi
	done

done

j=1

for ((i=4;i>0;i--))
do

	Descending_Order[$i]=${computeToArray[$j]}
	j=$(($j+1))
done
echo Actual result: ${compute[@]}
echo Ascending Order: ${computeToArray[@]}
echo Descending Order: ${Descending_Order[@]}
