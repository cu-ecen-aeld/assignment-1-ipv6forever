#!/bin/bash

if [[ $# -ne 2 ]] ; then 
    echo "There are supposed to be 2 arguments"
    exit 1
fi 

if [ ! -d $1 ] ; then
    echo "Path $1 doesn't exist"
    exit 1
fi 

echo "The number of files are $(find $1 -type f | wc -l) and the number of matching lines are $(grep -rn "$2" $1 | wc -l)"
