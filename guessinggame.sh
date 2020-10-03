#!/bin/bash
#file: guessinggame.sh
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
#a=int(input("enter a value"))
read -p "Guess again:" noOfFiles
elif [ $noOfFiles -lt $b ]
then
#print("sorry wrong answer,guesses lower than the actual number of files")
echo "Sorry wrong answer,gussed lower than the actual number of files"
#a=int(input("enter a value"))
read -p "Guess again:" noOfFiles
fi
done
if [ $noOfFiles == $b ]
then
correctGuess
fi


