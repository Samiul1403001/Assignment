#!/usr/bin/env bash
# File: guessinggame.sh
echo "How many files exist in your current directory?"
touch l.txt
ls -l>l.txt
let a=$(grep "^-" l.txt|wc -l)
rm l.txt
let a=$a-1

function loop {
let count=0
let a=$1
while [[ $count -le 0 ]]
do
  read r
  if [[ $r -gt $a ]]
  then
    echo "Too high... Try again."
  elif [[ $r -lt $a ]] && [[ $r -gt 0 ]]
  then
    echo "Too low... Try again."
  elif [[ $r -lt 0 ]]
  then
    echo "Invalid input... Try again."
  else
    echo "Congratulation! You are correct."
    let count=$count+1
  fi
done

}

loop $a
