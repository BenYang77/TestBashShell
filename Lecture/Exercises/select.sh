# select and case
# • Bash Select
# PS3=prompt # Special* variable for the select prompt
# select choice in choices; do
 # commands
 # # Break, otherwise endless loop
 # break
 # done
# • Bash Case
# case EXPRESSION in
# CASE1) COMMAND-LIST;;
# CASE2) COMMAND-LIST;;
# ...
# CASEN) COMMAND-LIST;;
# esac *see lecture 5
# 15
# select/case Exercise
# • Have the user select their favorite kind of music, and output a
# message based on their choice

clear;
Echo $ $0 $@;
PS3="What is your favorite kind of music? "
select CHOICE in "rock" "pop" "dance" "reggae"; do
 case "$CHOICE" in
 "rock") echo "Rock on, dude.";;
 "pop") echo "Top 100 is called that for a reason.";;
 "dance") echo "Let's lay down the Persian!";;
 "reggae") echo "Takin' it easy...";;
 * ) echo "come on...you gotta like something!";;
 esac
 break
done

