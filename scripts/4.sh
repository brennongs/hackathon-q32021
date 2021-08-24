#!/bin/bash
clear

if [ $1 = n ]; then
  ./lib/greeting.sh ./texts/4a.txt

  while true; do
    read -p "> " NESW
    case $NESW in
      n) exec ./scripts/5.sh n ;;
      e) cat ./texts/wall.txt ;;
      s) exec ./scripts/3.sh s ;;
      w) cat ./texts/wall.txt ;;
      r) exec ./main.sh ;;
      *) cat ./texts/sorry.txt ;;
    esac
  done
else
  ./lib/greeting.sh ./texts/4b.txt

  while true; do
    read -p "> " NESW
    case $NESW in
      n) exec ./scripts/3.sh s ;;
      e) cat ./texts/wall.txt ;;
      s) exec ./scripts/5.sh s ;;
      w) cat ./texts/wall.txt ;;
      r) exec ./main.sh ;;
      *) cat ./texts/sorry.txt ;;
    esac
  done
fi

exit
