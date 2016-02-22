#!/bin/bash
while : 
do
  let "c=$1"
  while [ $c -gt 0 ]; do
    printf "\033c"
    echo "BREAKER"
    echo "Break time in" $c "minutes."
    let "c=$c-1"
    sleep 60
  done
  echo "time to take a break" | festival --tts
done
