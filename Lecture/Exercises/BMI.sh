# BMI Exercise
# BMI=(height/(weight*weight))*10000
# • Write a program that computes the user's body mass index (BMI) to
# the nearest integer, as well as the user's weight class:
# $ ./bmi
# Usage: ./bmi weight height
# $ ./bmi 112 72
# Your Body Mass Index (BMI) is 15
# Here is a sandwich; please eat.
# $ ./bmi 208 67
# Your Body Mass Index (BMI) is 32
# There is more of you to love.

# BMI Weight class
  # 18 underweight
  # 18 - 24 normal
  # 25 - 29 overweight
  # 30 obese

#!/bin/bash
# Body Mass Index (BMI) calculator
clear;
Echo $ $0 $@
if [ $# -lt 2 ]; then
  echo "Usage: $0 weight height"
  exit 1 # 1 indicates failure, 0 for success
fi

let H2=“$2 * $2”
let BMI="703 * $1 / $H2"
echo "Your Body Mass Index (BMI) is $BMI"
if [ $BMI -le 18 ]; then
  echo "Here is a sandwich; please eat."
elif [ $BMI -le 24 ]; then
  echo "You're in normal weight range."
elif [ $BMI -le 29 ]; then
  echo "You could stand to lose a few."
else
  echo "There is more of you to love."  
fi