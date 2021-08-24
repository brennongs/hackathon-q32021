#!/bin/bash
clear
echo "$1" 

if [ $1 = 'n' ]; then
  ./lib/greeting.sh ./texts/1a.txt

  while true; do
    read -p "> " NESW
    case $NESW in
      n) exec ./scripts/2.sh n ;;
      e) cat ./texts/wall.txt ;;
      s) cat ./texts/wall.txt ;;
      w) cat ./texts/wall.txt ;;
      *) cat ./texts/sorry.txt ;;
    esac
  done
else
  ./lib/greeting.sh ./texts/1b.txt

  while true; do
    read -p "> " NESW
    case $NESW in
      n) cat ./texts/wall.txt ;;
      e) cat ./texts/wall.txt ;;
      s) exec ./scripts/2.sh n ;;
      w) cat ./texts/wall.txt ;;
      *) cat ./texts/sorry.txt ;;
    esac
  done
fi

exit 
