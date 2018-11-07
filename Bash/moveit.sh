#!/bin/bash
SRC='/Users/jblaine/GitHub/Jong/FPanda/chiang-mai'

printf "What is your name?  -> "
read NAME


#####################################


for i in *;
    do

    if [ -d "${i}" ]; then
        printf "Moving: %s\n"  "${i}";
        mv "${i}" "${SRC}/${i}"
    fi
done

