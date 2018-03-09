#!/bin/bash
id=`pidof $1`
echo "$id"
for pid in `pidof $1`
do
in=`cat /proc/$id/status |grep -i name /proc/$id/status`
in1=`cat /proc/$id/status |grep -i state  /proc/$id/status`
in2=`cat /proc/$id/status |grep -i pid /proc/$id/status`
in3=`cat /proc/$id/status |grep -i ppid /proc/$id/status`
echo $in
echo $in1
echo $in2
echo $in3
done
