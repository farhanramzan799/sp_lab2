#!/bin/bash

showMeOnwer()
{
#echo "`ls -l`"

for info in `ls` 
do
set `ls -il $info`

name="$5"
shift 1
file="$9"
echo $name $file 
 
done

}

showMeOnwer
