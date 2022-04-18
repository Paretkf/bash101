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

if [ "$NUM1" -gt "$NUM2" ]
then
  echo "NUM1 > NUM2"
else
  echo "NUM1 <= NUM2"
fi
# File condition

# -d file   True if the file is a directory
# -e file   True if the file exists (note that this is not particularly portable, thus -f is generally used)
# -f file   True if the provided string is a file
# -g file   True if the group id is set on a file
# -r file   True if the file is readable
# -s file   True if the file has a non-zero size
# -u    True if the user id is set on a file
# -w    True if the file is writable
# -x    True if the file is an executable

FILE="test.txt"

if [ -e "$FILE" ]
then
  echo "$FILE is a file"
else
  echo "No such file"
fi

#CASE STATEMENT
read -p "Are you 21 or over? Y/N " ANSWER
case "$ANSWER" in 
  # y or yes or Yes or yEs etc
  [yY] | [yY][eE][sS])
    echo "You can have a beer :)"
    ;;
  [nN] | [nN][oO])
    echo "Sorry, no drinking"
    ;;
  *)
    echo "Please enter y/yes or n/no"
    ;;
esac

SIMPLE FOR LOOP
NAMES="Brad Kevin Alice Mark"
for NAME in $NAMES
  do
    echo "Hello $NAME"
done

# FOR LOOP TO RENAME FILES
FILES=$(ls *.txt)
NEW="new"
for FILE in $FILES  
  do
    echo "Renaming $FILE to new-$FILE"
    mv $FILE $NEW-$FILE
done

# WHILE LOOP - READ THROUGH A FILE LINE BY LINE
LINE=1
while read -r CURRENT_LINE
  do
    echo "$LINE: $CURRENT_LINE"
    ((LINE++))
done < "./new-1.txt"