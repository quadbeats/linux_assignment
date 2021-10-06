#!/bin/sh

if [ $# -ne 2 ]
then
	echo "Argument should be 2"
	exit 1
fi

if [ $1 -lt 1 ] || [ $2 -lt 1 ]
then
	echo "Argument should be positive integer"
	exit 1
fi


for i in $(seq 1 $1)
do
	for j in $(seq 1 $2)
	do
		echo $i*$j=`expr $i \* $j`
	done
done

exit 0
