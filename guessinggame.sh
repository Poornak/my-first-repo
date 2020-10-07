#!/bin/bash
function Guess {
reg='^[0-9]*$'
read -p 'enter num: ' num
#echo "enter number:" num
until [[ $num =~ $reg ]]
do
    echo "Invalid Input!!"
    echo
    read -p 'enter num: ' num
done


}
Guess
echo "You entered $num"
a=$(ls -1a|wc -l)
c=2
b=`expr $a - $c`


while [[ $num != $b ]]
do
    if [[ $num -gt $b ]]
    then
        echo "sorry wrong answer,gussed higher than the actual number of files"
        Guess
    elif [[ $num -lt $b ]]
    then
        echo "sorry wrong answer,gussed lower than the actual number of files"
        Guess
    fi
done
if [[ $num == $b ]]
then
    echo "Congrats! You guessed it correct!"
fi
