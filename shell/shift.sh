# $ cat shift.sh
#! /bin/bash

while [ $# -gt 0 ]
do
        case "$1" in

        -l) echo "List command"
            ls
    	    shift
            ;;
	-p) echo "Process command"
    	    ps -a
    	    shift
    	    ;;
	-t) echo "Hash Table command"
    	    hash
    	    shift
    	    ;;
	-h) echo "Help command"
    	    help
    	    shift
	    ;;
	esac
done