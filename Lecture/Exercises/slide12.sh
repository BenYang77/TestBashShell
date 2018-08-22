#!/bin/bash
FILE=`ls -1 *.txt | sort | tail -1`
#FILE="ls -1 *.txt | sort | tail -1"
echo "Your last text file is: $FILE"
echo "$ 0:" $0
echo "$ 1:" $1
echo $FILE
echo "$FILE"