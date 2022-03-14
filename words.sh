#!/bin/bash
echo "Enter the name of a file"
read name
num=1
while read line
do
count=`echo "$line" | wc -w`
echo "total number of words in line $num is $count"
num=`expr $num + 1`
done < $name
