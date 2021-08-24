#!/bin/bash
clear

cat ./texts/3.txt

echo ""

cat ./texts/directions.txt

echo ""

while true; do
  read -p "> " NESW
  case $NESW in
    n) echo "You see a wall." ;;
    e) echo "You see a wall." ;;
    s) exec ./scripts/2.sh ;;
    w) exec ./scripts/4.sh ;;
    r) exec ./main.sh ;;
    *) cat ./texts/sorry.txt ;;
  esac
done

exit
