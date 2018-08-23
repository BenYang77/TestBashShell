#!/bin/bash
filePath=logfile.txt
filecontent=( `cat "$filePath" `)
for t in "${filecontent[@]}"
do
	echo $t
	# UnixShell=("${Unix[@]}" "${Shell[@]}")
	Shell=$t
	# echo ${#Shell[@]} ${Shell[@]}
done

echo "Read file content!"
