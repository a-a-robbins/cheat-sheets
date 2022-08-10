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
