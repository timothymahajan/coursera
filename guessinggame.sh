#!/usr/bin/env bash

function guessinggame {
	echo "Welcome to the guessing game"
	echo "How many files do you think are in the current directory?"
	let local actual_count=$(ls | wc -l)
	let local guess=$actual_count-1
	while [[ $guess -ne $actual_count ]]
	do
		echo "Please enter your guess, followed by [ENTER]"
		read your_guess
		let guess=$your_guess
		if [[ $guess -eq $actual_count ]]
		then
			echo "Congratulations, you are correct!"
		elif [[ $guess -gt $actual_count ]]
		then
			echo "Sorry, your guess is too high. Please guess again!"
		else
			echo "Sorry, your guess is too low. Please guess again!"
		fi
	done
}

guessinggame
