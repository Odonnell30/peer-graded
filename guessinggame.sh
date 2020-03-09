#!/usr/bin/env bash
# File: guessinggame.sh

guess=0
files=$(ls | wc -l )

function user_guess {
	echo "How many files do you think this directory contains?(excluding hidden files)"
	echo -n "Please enter a number:"
	echo -n ""
	read guess
}

while [[ $guess -ne $files ]]
do
	user_guess
	if [[ $guess -gt $files ]]
	then
		echo "Bad luck, too high. Try again"
		echo -n ""
	elif [[ $guess -lt $files ]]
	then
		echo "Bad luck, too low. Try again"
		echo -n ""
	fi
done

if [[ $guess -eq $files ]]
	then
	echo "You entered $guess"
	echo -n "Well Done, You guessed the right number of Files!"
	fi

