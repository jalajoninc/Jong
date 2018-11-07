#!/bin/bash
SRC='/Users/jblaine/Documents/src/zail/git/FPanda'
#SRC='/Users/jblaine/Documents/src/zail/git/temp'

printf "What is your name?  -> "
read NAME


func2 () {
    for i in "$1"/*;
        do
        if [ -d "$i" ]; then
            printf "**Dir: %s\n" "${i}"
            func2 "${i}"
            sleep 3
        fi
    done
    return 0
}
#####################################

gitIn () {
#    a="${i}"
    a="./${i}"
    printf "**Dir: %s\n" "${a}"
#    printf "**Dir: %s\n" "${i}"
    git init
    git add "${a}"
    git commit -m "First commit"
    git push -u origin master
    return 0
}
#git remote add origin ssh://git@example.com:1234/myRepo.git
#
#https://github.com/jalajoninc
#git remote add origin https://github.com/jalajoninc/test.git
#
#git remote set-url origin ssh://git@github.com/jalajoninc/test.git
#git init
#git add Food2
#git commit -m "First commit"
#git push -u origin master

git remote -v
git init
git add Menu2
git remote add origin https://github.com/jalajoninc/test.git

#####################################

gitDel () {
    a="./${i}"
    git rm -r "${a}"
    git commit -m "Remove duplicated directory"
    git push -u origin master
    return 0
}
#####################################

#for i in *;
#    do
#    if [ -d "$i" ]; then
#        printf "\nDir: %s\n\n" "${i}"
##        func2 "${i}"
#        gitIn "${i}"
##        gitDel "${i}"
#    fi
#done
#####################################

#for i in "${SRC}/"*;
#    do
#    if [ -d "${i}" ]; then
#        printf "\nDir: %s\n\n" "${i}"
#        cp -R "${i}" .
#    fi
#done

for i in *;
    do
    if [ -d "${i}" ]; then
        printf "\nDir: %s\n\n" "${i}"
#        gitIn "${i}"
#        gitIn "Thai Kitchen"
        gitDel "${i}"
        break
    fi
done

#mv common include
#git rm -r common
#git add include/common

#XRC='The Ninth'

#mv "${XRC}" bangkok
#git rm -r common
#git add bangkok/"${XRC}"

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
