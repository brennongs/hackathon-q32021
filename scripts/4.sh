#!/bin/bash
clear

while read -r LINE; do
  echo "$LINE"
done <"./texts/4.txt"

echo ""

while read -r LINE; do
  echo "$LINE"
done <"./texts/directions.txt"

echo ""

while true; do
  read -p "> " NESW
  case $NESW in
    n) ./scripts/5.sh
      exit ;;
    e) "You see a wall." ;;
    s) ./scripts/3.sh
      exit ;;
    w) "You see a wall." ;;
    r) ./main.sh
      exit ;;
    *) echo "Sorry, I can't help with that. Please enter 'n', 'e', 's', 'w'."
  esac
done

exit
