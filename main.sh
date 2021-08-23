#!/bin/bash

clear

while read -r LINE; do
  echo "$LINE"
done <"./art/splash.txt"

echo
echo "..."
echo

sleep .5
while read -r LINE; do
  echo "$LINE"
done <"./texts/start.txt"

read -r -s -p $"Press [ENTER] to continue, [CTRL+C] to exit..."

clear
sleep .5
while read -r LINE; do
  echo "$LINE"
done <"./texts/entry.txt"

while true; do
  read -p "Enter the direction that you want to move or [r] to restart the game: " NESW
  case $NESW in
    n) ./scripts/hallway.sh
      exit ;;
    e) echo "You see a wall." ;;
    s) echo "You see a wall." ;;
    w) echo "You see a wall." ;;
    r) exec "./main.sh" ;;
    *) echo "Sorry, I can't help with that. Please enter 'n', 'e', 's', 'w'."
  esac
done

exit 