#!/bin/bash

# Set UTF-8 encoding
export LANG=en_US.UTF-8

# Prompt the user to enter a comment
read -p "Please enter a comment: " var

# Display the user's input comment
echo "You entered the comment: $var"

# Perform Git operations
git pull
git pull origin master
git add sseTotal.rar
git add pushSelf.bat
git add pushSelf.sh
git add luaScript/*
git add srcScript/*

# Display the user's input comment again
echo "$var"

# Commit and push the changes
git commit -m "$var"
git push origin master:master
