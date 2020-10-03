#!/bin/bash
read -p "enter the total number of files present in current directory:" noOfFiles

function correctGuess {
echo "Congrats! You guessed it correct!"
}
b=$(ls -1a|wc -l)

while [ $noOfFiles != $b ]
do
if [ $noOfFiles -gt $b ]
then
echo "Sorry wrong answer,gussed higher than the actual number of files"
read -p "Guess again:" noOfFiles
elif [ $noOfFiles -lt $b ]
then
echo "Sorry wrong answer,gussed lower than the actual number of files"
read -p "Guess again:" noOfFiles
fi
done
if [ $noOfFiles == $b ]
then
correctGuess
fi


