#!/bin/bash
while true
do
    files=$(shopt -s nullglob dotglob; echo /home/folder1/*)
    if [ ${#files} -gt 0 ]
    then
        echo "All files was moved from 'folder1' to 'folder2'"
        mv /home/folder1/* /home/folder2/
    fi
done
