#!/bin/bash
clear;
FROM=$1
TO=$2
if [ -e $TO ]; then read -p "Do you want to overwrite $TO(y:yes;n:No)?" ANSWER; fi
if [ $ANSWER == "y" ]; then
	cp $FROM $TO;
	Echo file copy from [$FROM] to [$TO] bye bye
else
    Echo "cancel copy"
fi