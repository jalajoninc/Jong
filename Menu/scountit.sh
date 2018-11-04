#!/bin/bash

num=0

printf "What is your name?  -> "
read NAME


func2 () {
    for i in "$1"/*;
        do
        if [ -f "$i" ]; then
            num=$(( $num + 1 ))
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
        func2 "${i}"
    fi

done

printf "Count: %d\n\n" "${num}"



