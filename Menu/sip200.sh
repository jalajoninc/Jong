#!/bin/bash

printf "What is your name?  -> "
read NAME

TRGDIR='./'

func2 () {
    for i in "$1"/*;
        do

        if [ -f "$i" ]; then
            printf "File: %s\n\n" "${i}"
            sips -Z 400 "${i}";
        else
            func2 "${i}"
        fi
    done
    return 0
}

#####################################

#printf "Input: %s\n\n" "$1"

#find . -type f -name '*.jpg'
#find . -type f -name '*.jpg' -exec sips -Z 20

#####################################

for i in *;
    do

    if [ -d "$i" ]; then
        #printf "File: %s\n\n" "${i}"
        func2 "${i}"
    fi

done




