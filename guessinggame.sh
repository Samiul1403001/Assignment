#!/usr/bin/env bash
# File: guessinggame.sh
echo "How many files exist in your current directory?"
let a=$(ls -l|grep "^-"|wc -l)
function loop {
let count=0
while [[ $count -eq 0 ]]
do
  read r
  if [[ $r =~ [^0-9] ]]&&[[ ! $r == [a-z]+ ]]
  then
    echo "Invalid input.. Try again."
  elif [[ $r -gt $1 ]]
  then
    echo "Too high... Try again."
  elif [[ $r -lt $1 ]]&&[[ $r -ge 0 ]]
  then
    echo "Too low... Try again."
  elif [[ $r==$1 ]]
  then
    echo "Congratulation! You are correct."
    let count=$count+1
  else
    echo "Invalid input... Try again."
  fi
done
}
loop $a
