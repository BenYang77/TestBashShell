#!/bin/bash
# cat Back-references.txt
clear    
    for FILE in 'Back-references.txt'; do
    	sed -r "s/([0-9]{3})-([0-9]{4})/(206) \1\.\2/g" $FILE
    done