#!/bin/bash
clear

cat ./texts/1.txt

echo ""

cat ./texts/directions.txt

echo ""

while true; do
  read -p "> " NESW
  case $NESW in
    n) exec ./scripts/2.sh ;;
    e) echo "You see a wall." ;;
    s) echo "You see a wall." ;;
    w) echo "You see a wall." ;;
    *) cat ./texts/sorry.text ;;
  esac
done

exit 
