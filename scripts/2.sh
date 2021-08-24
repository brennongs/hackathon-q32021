#!/bin/bash
clear

HAS_KEY=$(cat ./state/HAS_KEY)

while read -r LINE; do
  echo "$LINE"
done <"./texts/2.txt"

echo ""

while read -r LINE; do
  echo "$LINE"
done <"./texts/directions.txt"

echo ""

while true; do
  read -p "> " NESW
  case $NESW in
    n) echo "You see a wall." ;;
    e) ./scripts/3.sh
      exit ;;
    s) ./scripts/1.sh
      exit ;;
    w) if [ $HAS_KEY = true ]; then
      ./scripts/6.sh; else
      echo "The door is locked, unfortunately. Perhaps there's a key somewhere..."
    fi ;;
    r) exec "./main.sh" ;;
    *) echo "Sorry, I can't help with that. Please enter 'n', 'e', 's', 'w'."
  esac
done

exit
