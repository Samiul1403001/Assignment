#!/usr/bin/env bash
# File: guessinggame.sh
echo "How many files exist in your current directory?"
count=0
touch l.txt
ls -l>l.txt
let a=$(grep "^-" l.txt|wc -l)
rm l.txt
let a=$a-1
while [[ $count -le 0 ]]
do
  read r
  if [[ $r -gt $a ]]
  then
    echo "Too high... Try again."
  elif [[ $r -lt $a ]]
  then
    echo "Too low... Try again."
  else
    echo "Congratulation! You are correct."
    let count=$count+1
  fi
done
