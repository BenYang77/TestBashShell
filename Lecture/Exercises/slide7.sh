#!/bin/bash
clear # clears the screen, PLEASE do NOT use this in your homework scripts!
echo "Today's date is `date`"
echo
~rea/390/cowsay `whoami`

echo "These users are currently connected:"
w -h | sort
echo

echo "This is `uname -s` on a `uname -m` processor."
echo

echo "This is the uptime information:"
uptime
echo
echo "That's all folks!"