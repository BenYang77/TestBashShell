# While exercise
# • Prompt the user for what they would like to do. While their answer
# is “open the pod bay doors” tell them that you cannot do
# that and prompt for another action.

#!/bin/bash
# What would you like to do?
clear;
Echo $ $0 $@
read -p "What would you like me to do? " ACTION
echo "You said: $ACTION"
while [ "$ACTION" = "open the pod bay doors" ]; do
	echo "I'm sorry Dave, I'm afraid I can't do that."
	read -p "What would you like me to do? " ACTION
echo "You said: $ACTION"
done
echo "Bye"
