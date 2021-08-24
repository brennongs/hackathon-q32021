#!/bin/bash
clear

HAS_KEY=$(cat ./state/HAS_KEY)

cat ./texts/2.txt

echo ""

cat ./texts/directions.txt

echo ""

while true; do
  read -p "> " NESW
  case $NESW in
    n) echo "You see a wall." ;;
    e) exec ./scripts/3.sh ;;
    s) exec ./scripts/1.sh ;;
    w) if [ $HAS_KEY = true ]; then
      exec ./scripts/6.sh; else
      echo "The door is locked, unfortunately. Perhaps there's a key somewhere..."
    fi ;;
    r) exec ./main.sh ;;
    *) cat ./texts/sorry.txt ;;
  esac
done

exit
