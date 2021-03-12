#!/usr/bin/env bash
function guess {
    guess_diff=$@-$(find "$PWD" -type f | wc -l)
}
echo -n "How many files are in the current directory?"
index=0
while [[ $index -lt 1 ]]
do
    echo -n " Make a guess:"
    read num
    guess $num
    if [[ $guess_diff -lt 0 ]]
    then
    echo -n "Too low."
    elif [[ $guess_diff -gt 0 ]]
    then
    echo -n "Too high."
    else
    let index=$index+1
    echo "Congratulations, that is correct!"
    fi
done
