#!/bin/bash
clear

if [ $1 = n ]; then
  ./lib/greeting.sh ./texts/3a.txt

  while true; do
    read -p "> " NESW
    case $NESW in
      n) cat ./texts/wall.txt ;;
      e) cat ./texts/wall.txt ;;
      s) exec ./scripts/2.sh s ;;
      w) exec ./scripts/4.sh n ;;
      r) exec ./main.sh ;;
      *) cat ./texts/sorry.txt ;;
    esac
  done
else
  ./lib/greeting.sh ./texts/3b.txt

  while true; do
    read -p "> " NESW
    case $NESW in
      n) cat ./texts/wall.txt ;;
      e) exec ./scripts/2.sh s ;;
      s) exec ./scripts/4.sh n ;;
      w) cat ./texts/wall.txt ;;
      r) exec ./main.sh ;;
      *) cat ./texts/sorry.txt ;;
    esac
  done
fi

exit
