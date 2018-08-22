#!/bin/bash
# cat files.txt
clear
    Echo "Commands in sequence"  
	Echo "	command1 ; command2                                             "
	Echo "run command1 and then command2 afterward (they are not linked)    "
	Echo "                                                                  "
	Echo "	command1 && command2                                            "
	Echo "run command1, and if it succeeds, runs command2 afterward         "
	Echo "will not run command2 if any error occurs during the running of 1 "
	Echo "                                                                  "
	Echo "Example: Make directory songs and move my files into it.          "
	Echo "	mkdir songs && mv *.mp3 songs                                   "

	
    # YEAR=2011
    # for FILE in 'movies.txt'; do
    	# # sed -r "s#([0-9]{1,2})/([0-9]{1,2})#\1/\2/$YEAR#g" $FILE
		# sed -r "s/^(.*)\(([0-9]{4})\)/\2 \1/g" movies.txt | sort $FILE
    # done

	# sed -r "s/^(.*) \(([0-9]{4})\)/\2 \1 /g" movies.txt | sort > movies2.txt
	# ECHO>> movies2.txt&ECHO>> movies2.txt
	# sed -r "s/^(.*) \(([0-9]{4})\)/\1 \2 /g" movies.txt | sort >> movies2.txt
	
	# sed -r "s/^(.*) \(([0-9]{4})\)/\2 \1 /g" movies.txt | sort | sed -r "s/([0-9]{4}) (.*)/\2(\1)/g"
	Echo "^ matches the beginning of a line; $ the end" > movies-01.2.txt
	Echo ""a.*a" matches "aa", "aba", "a8qa", "a!?_a", ... " >> movies-01.2.txt
	Echo "Reg : s/^(.*) \(([0-9]{4})\)/\2 \1 /g" >> movies-01.2.txt
	Echo >> movies-01.2.txt
    sed -r "s/^(.*) \(([0-9]{4})\)/\2 \1 /g" movies-01.txt | sort >> movies-01.2.txt
	ECHO>> movies-01.2.txt&&ECHO>>movies-01.2.txt
	
	Echo "Reg : s/^(.) \(([0-9]{4})\)/\2 \1 /g" >> movies-01.2.txt
	sed -r "s/^(.) \(([0-9]{4})\)/\2 \1 /g" movies-01.txt | sort >> movies-01.2.txt
	ECHO>> movies-01.2.txt&&ECHO>>movies-01.2.txt
		
	Echo "Reg : s/^(.*) \(([0-9]{4})\)/\1 \2 /g" >> movies-01.2.txt
	sed -r "s/^(.*) \(([0-9]{4})\)/\1 \2 /g" movies-01.txt | sort >> movies-01.2.txt
    ECHO>> movies-01.2.txt&&ECHO>> movies-01.2.txt
	
	sed -r "s/^(.) \(([0-9]{4})\)/\1 \2 /g" movies-01.txt | sort >> movies-01.2.txt
    ECHO>> movies-01.2.txt;ECHO>> movies-01.2.txt