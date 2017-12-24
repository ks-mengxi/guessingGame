#!/bin/bash

# The script is a game requiring players to guess how many files under the current directory.

function get_file_num_under_current_dir {
	ls | wc -l
}

total_num_file=$(get_file_num_under_current_dir)
echo "Enter your guess about the number of the files in the current directory:"
read user_guess
while [[ $user_guess -ne $total_num_file ]]
do
	if [[ $user_guess -gt $total_num_file ]]
	then
		echo "Your guess is too high. Try a new guess (Your current guess is $user_guess):"
		read user_guess
	elif [[ $user_gusee -lt $total_num_file ]]
	then
		echo "Your guess is too low. Try a new guess (Your current guess is $user_guess):"
		read user_guess
	fi
done

echo "Congratulation! You got the right answer (i.e. $total_num_file)!"
