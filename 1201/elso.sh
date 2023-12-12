#!/bin/bash
filename='input.txt'
calibration=()
re='^[0-9]+$'

while read line; do
calibration[${#calibration[@]}]=$line
done < $filename

for ((i = 0; i < ${#calibration[@]}; i++))
do
	for ((j = 0; j < ${#calibration[i]}; j++))
	do
		#echo -n ${calibration[i]:j:1}
		if [[ ${calibration[i]:j:1} =~ $re ]] ; then
		decimal=$((10*${calibration[i]:j:1}))
		echo $decimal
		fi
	done
	echo	
done

