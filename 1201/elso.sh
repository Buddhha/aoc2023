#!/bin/bash
filename='input.txt'
calibration=()

while read line; do
calibration[${#calibration[@]}]=$line
done < $filename

for ((i = 0; i < ${#calibration[@]}; i++))
do
	echo ${calibration[i]}
done

