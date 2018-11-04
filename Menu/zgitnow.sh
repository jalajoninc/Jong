#!/bin/bash

printf "What is your name?  -> "
read NAME


func2 () {
    for i in "$1"/*;
        do

        if [ -f "$i" ]; then
            printf "File: %s\n\n" "${i}"
#            sips -Z 200 "${i}";
        else
            func2 "${i}"
        fi
    done
    return 0
}

#####################################

for i in *;
    do

    if [ -d "$i" ]; then
        printf "File: %s\n\n" "${i}"
#        func2 "${i}"
    fi

done


#git init
#git add .
#git commit -m "First commit"
#git remote add origin remote repository URL
#git remote -v
#git push -u origin master

#git init
#git add ./zicon2
#git commit -m "First commit"
#git push -u origin master



#git rm -r ./zicon2
#git commit -m "Remove duplicated directory"
#git push -u origin master
