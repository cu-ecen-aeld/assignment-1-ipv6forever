#!/bin/bash

if [[ $# -ne 2 ]] ; then 
    echo "There are supposed to be 2 arguments"
    exit 1
fi

mkdir -p ${1%/*} && echo "$2" > $1
if [ $? -ne 0 ] ; then
    echo "Failed to create file $1" 
    exit 1 
fi

exit 0

