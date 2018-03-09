#!/bin/bash

count=$#
echo "arguments passed are : $count"

if [ $count = 0 ]
then
echo "No arguments are given."
fi

if [ $count -gt 6 ]
then
echo "To many arguments."
fi

if [ $count = 1 ]
then
num=$1
for i in `seq 1 10`
do
	echo " $num * $i = `expr $num \* $i`"
done
fi

if [ $count = 3 ]
then
num=$1
if [ $2 = "-s" ]
then
for i in `seq $3 10`
do
	echo " $num * $i = `expr $num \* $i`"
done
fi
if [ $2 = "-e" ]
then
for i in `seq 1 $3`
do
	echo " $num * $i = `expr $num \* $i`"
done
fi
fi

if [ $count = 5 ]
then
num=$1
if [ $2 = "-s" ]
then
for i in `seq $3 $5`
do
	echo " $num * $i = `expr $num \* $i`"
done
fi
fi

if [ $count = 6 ]
then
num=$1
var=$5
var2=$3
if [ $2 = "-s" ]
then
while [ $var -ge $var2 ]
do
	echo " $num * $var = `expr $num \* $var`"
	var=`expr $var - 1`
done
fi
fi
