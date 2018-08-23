# Ref : https://www.thegeekstuff.com/2010/06/bash-array-tutorial
# name is any name for an array
# index could be any number or expression that must evaluate to a number greater than or equal to zero.You can declare an explicit array using declare -a arrayname.
# $ cat arraymanip.sh
#! /bin/bash

clear;
Echo $ $0 $@;
Echo " The Ultimate Bash Array Tutorial with 15 Examples"

Echo "#1. Declaring an Array and Assigning values"
unix[0]='debian'
unix[1]='red hat'
unix[2]='ubuntu'
unix[3]='suse'
echo ${unix[1]}
Echo

Echo "#2. Initializing an array during declaration"
declare -a Unix=('Debian' 'Red hat' 'Suse' 'Red2 hat' 'Fedora');
Echo

Echo "#3. Print the Whole Bash Array"
echo ${Unix[@]}
Echo

Echo "#4. Length of the Bash Array"
echo ${#Unix[@]} "#Number of elements in the array"
echo ${#Unix}  "#Number of characters in the first element of the array.i.e Debian"
Echo

Echo "#5. Length of the nth Element in an Array"
echo ${#Unix[3]} "#length of the element located at index 3 i.e Suse"
Echo

Echo "6. Extraction by offset and length for an array"
Echo "The following example shows the way to extract 2 elements" 
Echo "  starting from the position 3 from an array called Unix."
Echo "Unix=('Debian' 'Red hat' 'Ubuntu' 'Suse' 'Fedora' 'UTS' 'OpenLinux');"
Echo "$ {Unix[@]:3:2}"
Unix=('Debian' 'Red hat' 'Ubuntu' 'Suse' 'Fedora' 'UTS' 'OpenLinux');
echo ${Unix[@]:3:2}
Echo

Echo "#7. Extraction with offset and length, for a particular element of an array"
Echo "To extract only first four elements from an array element .                "
Echo "For example, Ubuntu which is located at the second index of an array,      "
Echo "you can use offset and length for a particular element of an array.        "
Echo "Unix=('Debian' 'Red hat' 'Ubuntu' 'Suse' 'Fedora' 'UTS' 'OpenLinux');      "
Echo "$ {Unix[2]:0:4}"
Unix=('Debian' 'Red hat' 'Ubuntu' 'Suse' 'Fedora' 'UTS' 'OpenLinux');
echo ${#Unix[2]} ${Unix[2]:0:4}
Echo

Echo "#8. Search and Replace in an array elements"
Echo "The following example, searches for Ubuntu in an array elements, and replace the same with the word ‘SCO Unix’."
Echo "Unix=('Debian' 'Red hat' 'Ubuntu' 'Suse' 'Fedora' 'UTS' 'OpenLinux');"
Echo "$ {Unix[@]/Ubuntu/SCO Unix}"
Unix=('Debian' 'Red hat' 'Ubuntu' 'Suse' 'Fedora' 'UTS' 'OpenLinux');
echo ${Unix[@]/Ubuntu/SCO Unix}
Echo

Echo "#9. Add an element to an existing Bash Array"
Echo "The following example shows the way to add an element to the existing array."
Echo "  Unix=('Debian' 'Red hat' 'Ubuntu' 'Suse' 'Fedora' 'UTS' 'OpenLinux');"
Echo "  Unix=("$ {Unix[@]}" "AIX" "HP-UX")"
Echo "  $ {Unix[@]}"
Echo "  $ {Unix[7]}"
Unix=('Debian' 'Red hat' 'Ubuntu' 'Suse' 'Fedora' 'UTS' 'OpenLinux');
Unix=("${Unix[@]}" "AIX" "HP-UX")
echo ${Unix[@]};
echo ${Unix[7]}
Echo

Echo "#10. Remove an Element from an Array"
Echo "unset is used to remove an element from an array.unset will have the same effect as assigning null to an element."
Echo "Before List All Array : " ${Unix[@]};
Echo "Remove an element at 3 Unix[3]"
unset Unix[3]
Echo "After List All Array : " ${Unix[@]};
Echo

Echo "#11. Remove Bash Array Elements using Patterns"
Echo "In the search condition you can give the patterns, and stores the remaining element to an another array as shown below."
Echo "declare -a Unix=('Debian' 'Red hat' 'Red book' 'Ubuntu' 'Suse' 'Fedora');"
Echo "declare -a patter=($ {Unix[@]/Red*/} )"
declare -a Unix=('Debian' 'Red hat' 'Red book' 'Ubuntu' 'Suse' 'Fedora');
echo "Before List All Array : " ${Unix[@]}
declare -a patter=( ${Unix[@]/Red*/} )
echo "After List All Array : " ${patter[@]}
Echo

Echo "#12. Copying an Array"
Echo "Expand the array elements and store that into a new array as shown below."
Echo "Linux=("$ {Unix[@]}");echo $ {Linux[@]}"
Linux=("${Unix[@]}");echo ${Linux[@]}
Echo

Echo "#13. Concatenation of two Bash Arrays"
Echo "Expand the elements of the two arrays and assign it to the new array."
Echo "Unix=('Debian' 'Red hat' 'Ubuntu' 'Suse' 'Fedora' 'UTS' 'OpenLinux');"
Echo "Shell=('bash' 'csh' 'jsh' 'rsh' 'ksh' 'rc' 'tcsh');"
Echo "UnixShell=("$ {Unix[@]}" "$ {Shell[@]}")"
Unix=('Debian' 'Red hat' 'Ubuntu' 'Suse' 'Fedora' 'UTS' 'OpenLinux');
Shell=('bash' 'csh' 'jsh' 'rsh' 'ksh' 'rc' 'tcsh');
UnixShell=("${Unix[@]}" "${Shell[@]}")
echo ${UnixShell[@]}
echo ${#UnixShell[@]}
Echo

Echo "#14. Deleting an Entire Array"
Echo "#unset is used to delete an entire array."
Echo "Unix=('Debian' 'Red hat' 'Ubuntu' 'Suse' 'Fedora' 'UTS' 'OpenLinux');"
Echo "Shell=('bash' 'csh' 'jsh' 'rsh' 'ksh' 'rc' 'tcsh');"
Echo "UnixShell=("$ {Unix[@]}" "$ {Shell[@]}")"
Echo "unset UnixShell"
Unix=('Debian' 'Red hat' 'Ubuntu' 'Suse' 'Fedora' 'UTS' 'OpenLinux');
Shell=('bash' 'csh' 'jsh' 'rsh' 'ksh' 'rc' 'tcsh');
UnixShell=("${Unix[@]}" "${Shell[@]}")
unset UnixShell
echo ${#UnixShell[@]}
Echo

# 15. Load Content of a File into an Array
# You can load the content of the file line by line into an array.

# #Example file
# $ cat logfile
# Welcome
# to
# thegeekstuff
# Linux
# Unix

# $ cat loadcontent.sh
# #!/bin/bash
# filecontent=( `cat "logfile" `)

# for t in "${filecontent[@]}"
# do
# echo $t
# done
# echo "Read file content!"

# $ ./loadcontent.sh
# Welcome
# to
# thegeekstuff
# Linux
# Unix
# Read file content!





# ./arraymanip.sh