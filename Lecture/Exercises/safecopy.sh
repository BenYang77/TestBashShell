#!/bin/bash
clear;
Echo $ $0 $@
FROM=$1
TO=$2
if [ -e $TO ]; then read -p "Do you want to overwrite $TO(y:yes;n:No)?" ANSWER; fi
if [ $ANSWER == "y" ]; then
	cp $FROM $TO;
	Echo file copy from [$FROM] to [$TO] bye bye
else
    Echo "cancel copy"
fi

# Lecture Sample
# safecopy Exercise Solution
# #!/bin/bash
# FROM=$1
# TO=$2
# if [ -e $TO ]; then
 # read -p "Do you want to overwrite $TO?" ANSWER
 # if [ $ANSWER = "yes" ]; then
 # cp $FROM $TO
 # fi
# else
 # cp $FROM $TO
# fi