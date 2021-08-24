#!/bin/bash
door() {
  if [ $(cat ./state/HAS_KEY) = true ]; then
    exec ./scripts/6.sh; else
    echo "true" > state/HAS_TRIED_LOCKED_DOOR
    echo "The door is locked, unfortunately. Perhaps there's a key somewhere..."
  fi 
}
clear

if [ $1 = n ]; then
  ./lib/greeting.sh ./texts/2a.txt

  while true; do
    read -p "> " NESW
    case $NESW in
      n) cat ./texts/wall.txt ;;
      e) exec ./scripts/3.sh n ;;
      s) exec ./scripts/1.sh s ;;
      w) door ;;
      r) exec ./scripts/main.sh ;;
      *) cat ./texts/sorry.txt ;;
    esac
  done
else
  HAS_TRIED_DOOR=$(cat ./state/HAS_TRIED_LOCKED_DOOR)
  if [ $HAS_TRIED_DOOR = true ]; then
    ./lib/greeting.sh ./texts/2b-b.txt; else
    ./lib/greeting.sh ./texts/2b-a.txt
  fi
  
  while true; do
    read -p "> " NESW
    case $NESW in
      n) door ;;
      e) cat ./texts/wall.txt ;;
      s) exec ./scripts/3.sh n ;;
      w) exec ./scripts/1.sh s ;;
      r) exec ./scripts/main.sh ;;
      *) cat ./texts/sorry.txt ;;
    esac
  done
fi

exit
