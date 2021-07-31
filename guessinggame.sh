#!/usr/bin/env bash
# File: guessinggame.sh 

# calculate the number of files 
numfiles=$(ls | wc -l)
echo $numfiles

# function check
function check { 
    if [[ $response -gt $numfiles ]] 
    then 
        echo "Your guess it too high. Please guess again"
        echo "How many files are in the current directory?: "
        read response
        echo "You entered: $response"
    else 
        echo "Your guess it too low. Please guess again"
        echo "How many files are in the current directory?: "
        read response
        echo "You entered: $response"
    fi
}

echo "How many files are in the current directory?: "
read response
echo "You entered: $response"

while [[ $numfiles -ne $response ]] 
do 
    check
done

if [[ $numfiles -eq $response ]] 
then
    echo "Congratulations, you have guessed the right answer. Goodbye!"
fi 

echo "End Program"





