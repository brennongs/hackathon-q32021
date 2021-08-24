#!/bin/bash
clear

while read -r LINE; do
  echo "$LINE"
done <"./texts/1.txt"

echo ""

while read -r LINE; do
  echo "$LINE"
done <"./texts/directions.txt"

echo ""

while true; do
  read -p "> " NESW
  case $NESW in
    n) ./scripts/2.sh
      exit ;;
    e) echo "You see a wall." ;;
    s) echo "You see a wall." ;;
    w) echo "You see a wall." ;;
    *) echo "Sorry, I can't help with that. Please enter 'n', 'e', 's', 'w', 'u' or 'd'."
  esac
done

exit 
