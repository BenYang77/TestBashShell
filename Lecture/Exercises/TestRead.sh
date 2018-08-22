#!/bin/bash
read -p "What is your name? " name
read -p "How old are you? " age
printf "%10s is %40s years old\n" $name $age

printf "$name is $age years old\n"
