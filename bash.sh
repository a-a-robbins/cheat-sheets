#! /usr/bin/bash

# ECHO
echo Hello World!

# VARIABLES - uppercase by convention
NAME="Jane"
echo "My name is $NAME" # note: the use of ${NAME} is also a valid declaration

# USER INPUT
read -p "Enter your name: " USER_NAME
echo "Hello $USER_NAME, nice to meet you!"

# IF/ELSE
if [ "$USER_NAME" == "Jane"]
then
    echo "Your name is Jane"
elif ["$USER_NAME" == "Joe"]
then   
    echo "Your name is Joe"
else 
    echo "Your name is not Jane or Joe...who are you??"
fi

# COMPARISONS
# val1 -eq val2 Returns true if the values are equal
# val1 -ne val2 Returns true if the values are not equal
# val1 -gt val2 Returns true if val1 is greater than val2
# val1 -ge val2 Returns true if val1 is greater than or equal to val2
# val1 -lt val2 Returns true if val1 is less than val2
# val1 -le val2 Returns true if val1 is less than or equal to val2

NUM1=3
NUM2=5

if ["$NUM1" -gt "$NUM2"]
then
    echo "$NUM1 is greater than $NUM2"
else    
    echo "$NUM1 is less than $NUM2"
fi

# FILE CONDITIONS
# -d file   True if the file is a directory
# -e file   True if the file exists (note that this is not particularly portable, thus -f is generally used)
# -f file   True if the provided string is a file
# -g file   True if the group id is set on a file
# -r file   True if the file is readable
# -s file   True if the file has a non-zero size
# -u    True if the user id is set on a file
# -w    True if the file is writable
# -x    True if the file is an executable

touch test.txt # create the file for below (could be done in the terminal)
FILE="test.txt"

if [-f "$FILE"]
then    
    echo "$FILE is a file"
else 
    echo "$FILE is not a file"
fi


# CASE STATEMENT (very similar to the SWITCH statement in other languages)
read -p "Are you 21 or over? Y/N" ANSWER #will get user input
case "$ANSWER" in
    [yY] | [yY][eE][sS]
        echo "You can have a beer :)"
        ;; 
    [nN] | [nN][oO]
        echo "Sorry, no drinking"
        ;;
    *)
        echo "Please enter y/yes or n/no" # default case
        ;;
esac # "case" backwards 

# FOR LOOPS
NAMES="Brad Kevin Alice Mark"
for NAME in $NAMES
    do 
        echo "Hello $NAME"
done

FILES=$(ls *.txt) # list files and pick all .txt
NEW="new"
for FILE in $FILES 
    do 
        echo "Renaming $FILE to new-$FILE"
        mv $FILE $NEW-$FILE 
done

# WHILE LOOPS 