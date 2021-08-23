#!/bin/bash
clear
echo "[FILE 3]"

while read -r LINE; do
  echo "$LINE"
done <"./texts/3.txt"

echo ""

while read -r LINE; do
  echo "$LINE"
done <"./texts/directions.txt"

echo ""

while true; do
  read -p "> " NESW
  case $NESW in
    n) echo "You see a wall." ;;
    e) echo "You see a wall." ;;
    s) ./scripts/2.sh
      exit ;;
    w) ./scripts/4.sh
      exit ;;
    r) exec "./main.sh" ;;
    *) echo "Sorry, I can't help with that. Please enter 'n', 'e', 's', 'w'."
  esac
done

exit
