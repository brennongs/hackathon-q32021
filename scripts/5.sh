#!/bin/bash
explore() {
  clear

  while read -r LINE; do
    echo "$LINE"
  done <"./texts/explore.txt"

  echo "true" > ./state/HAS_KEY

  sleep .5
  read -r -s -p $"Press [ENTER] to continue or [CTRL+C] to exit..."
}

clear

while read -r LINE; do
  echo "$LINE"
done <"./texts/5.txt"

echo ""

echo "
n (north/explore room)
s (south/exit room)
"

echo ""

while true; do
  read -p "> " NESW
  case $NESW in
    n) explore;
      ./scripts/4.sh
      exit ;;
    s) ./scripts/3.sh
      exit ;;
    r) exec "./main.sh" ;;
    *) echo "Sorry, I can't help with that. Please enter 'n', 'e', 's', 'w'."
  esac
done

exit
