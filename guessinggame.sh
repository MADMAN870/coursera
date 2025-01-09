#!/bin/bash

# Function to count files
count_files() {
    echo $(ls -1 | wc -l)
}

# Variables
file_count=$(count_files)
guess=-1

# Welcome message
echo "Welcome to the Guessing Game!"
echo "Can you guess how many files are in the current directory?"

# Game loop
while [[ $guess -ne $file_count ]]; do
    read -p "Enter your guess: " guess

    if [[ $guess -lt $file_count ]]; then
        echo "Too low!"
    elif [[ $guess -gt $file_count ]]; then
        echo "Too high!"
    else
        echo "Congratulations! You guessed it right!"
    fi
done
