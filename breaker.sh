#!/bin/bash
while : 
do
  
  let "c=$1"
  let "break=$2"

  while [ $c -gt 0 ]; do
    printf "\033c"
    echo "BREAKER"
    echo "Break time in" $c "minutes."
    let "c=$c-1"
    sleep 60
  done

  echo "time to take a break" | festival --tts

  while [ $break -gt 0 ]; do
    printf "\033c"
    echo "BREAKER"
    echo "Break time for the next" $break "minutes."
    let "break=$break-1"
    sleep 60
  done

  echo "break is over" | festival --tts

done
