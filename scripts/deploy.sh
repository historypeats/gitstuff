#!/bin/bash

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
