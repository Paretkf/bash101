#! /bin/bash

# from : https://www.youtube.com/watch?v=v-F3YLd6oMw&t=131s&ab_channel=TraversyMedia

# Echo CMD
echo Hello bash!

# VARIABLES
# Uppercase
# Letters numbers underscores

NAME="paretkf"

echo "My name is $NAME"
# My name is paretkf

echo "My name is ${NAME}"
# My name is paretkf


# User input
read -p "Enter your name : " NAME

echo "Hello ${NAME}"

# Simple statement

if [ "$NAME" == "paretkf" ]
then
  echo "Nong paretkf"
elif [ "$NAME" == "flucl" ]
then
  echo  "Nong fluck <3"
else
  echo  "Hello nong ${NAME}"
fi

# Comparison
# -eq ==
# -ne <>
# -gt >
# -ge >=
# -lt <
# -le <=
NUM1=2
NUM2=3

if ["$NUM1" -gt "$NUM2"]
then
  echo "NUM1 > NUM2"
else
  echo "NUM1 <= NUM2"