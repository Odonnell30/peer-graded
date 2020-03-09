#!/usr/bin/env bash
# File: guessinggame.sh

count=0

files=$(ls | wc -l | egrep -o "([0-9]+)")

function user_guess {
	echo "How many files do you think this directory contains?"
	read guess
}

while [[ $guess -ne $files ]]
do
	user_guess
	if [[ $guess -gt $files ]]
	then
		echo "Bad luck, too high. try again"
	else [[ $guess -lt $files ]]
		echo "Bad luck, too low. Try again"
	user_guess
	fi
done
echo "Well done! You guessed Right!"
