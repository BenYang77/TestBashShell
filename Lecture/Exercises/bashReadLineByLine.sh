#!/bin/bash
# Ref : https://www.linuxquestions.org/questions/linux-newbie-8/split-a-string-into-array-in-bash-869196/
function Splite(){
  arr=$(echo $1 | tr " " "\n")
  # arr=($1)
  # for x in ${arr[@]}
  for x in $arr
  do
    echo "\"$x\""
  done
}

while IFS='' read -r line || [[ -n "$line" ]]; do
    echo "Text read from file: $line"
	Splite "$line"
done < "$1"

# Ref : https://www.cyberciti.biz/faq/unix-howto-read-line-by-line-from-file/
# Ref : https://stackoverflow.com/questions/10929453/read-a-file-line-by-line-assigning-the-value-to-a-variable
# The following (save as rr.sh) reads a file passed as an argument line by line:

# #!/bin/bash
# while IFS='' read -r line || [[ -n "$line" ]]; do
    # echo "Text read from file: $line"
# done < "$1"
# Explanation:

# IFS='' (or IFS=) prevents leading/trailing whitespace from being trimmed.
# -r prevents backslash escapes from being interpreted.
# || [[ -n $line ]] prevents the last line from being ignored if it doesn't end with a \n (since read returns a non-zero exit code when it encounters EOF).
# Run the script as follows:

# chmod +x rr.sh
# ./rr.sh filename.txt

Ref : https://www.cyberciti.biz/faq/unix-howto-read-line-by-line-from-file/
# Other Example
# #!/bin/ksh
# file="/home/vivek/data.txt"
# while IFS= read line
# do
        # # display $line or do somthing with $line
	# echo "$line"
# done <"$file"
