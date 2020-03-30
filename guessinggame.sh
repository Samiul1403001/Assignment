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
  echo $r>t.txt
  let f=$(grep "[^0-9]" t.txt|wc -l)
  if [[ $f -gt 0  ]]
  then
    echo "Invalid input.. Try again."
  elif [[ $r -gt $a ]]
  then
    echo "Too high... Try again."
  elif [[ $r -lt $a ]] && [[ $r -gt 0 ]]
  then
    echo "Too low... Try again."
  elif [[ $r -lt 0 ]]
  then
    echo "Invalid input... Try again."
  elif [[ $r==$a ]]
  then
    echo "Congratulation! You are correct."
    let count=$count+1
  else
    echo "Invalid input... Try again."
  fi
done
rm t.txt
}
loop $a
