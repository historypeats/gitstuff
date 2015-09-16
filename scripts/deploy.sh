#!/bin/bash

# This is a basic script to add everything in your project, commit with a message and then push to master


message=$1
default_message="Updated repo"

git add .

if [ -z "$message" ];then
	git commit -m "$default_message"

else
	git commit -m "$message"

fi

git push origin master

echo "Updated repo"
