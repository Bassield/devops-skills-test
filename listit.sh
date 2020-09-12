#!/bin/bash

#Create a file called directories.list that contains the directory names only of the current directory.
ls -d */ > directories.list
#Add a line at the beginning of the directories.list file that reads "line one's line".
echo "$(printf "line one's line\n";cat directories.list)" > directories.list
#Output the first three lines of directories.list on the console.
head -3 directories.list

#Accept an integer parameter when executed and repeat the previous question's output x amount of times based on the parameter provided at execution
loopTill=$1
for ((i=1;i<=loopTill;i++));do
    head -3 directories.list
done
