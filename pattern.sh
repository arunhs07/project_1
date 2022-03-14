#!/bin/bash
echo "enter the pattern"
read pattern
files=`grep -Rl "$pattern" * > filepattern`
echo $files
if [ $? -eq 0 ]
then
	echo "the below files contain a pattern"
	cat filepattern
else
	echo "Error pattern doesnot exists in any files"
fi
