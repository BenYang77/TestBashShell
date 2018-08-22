#!/bin/bash
# cat files.txt
clear
    YEAR=2011
    for FILE in 'cat_files.txt'; do
    	# sed -r "s#([0-9]{1,2})/([0-9]{1,2})#\1/\2/$YEAR#g" $FILE
		sed -r "s#([0-9]{1,2})/([0-9]{1,2})#\2/\1/$YEAR#g" $FILE
    done