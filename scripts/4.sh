#!/bin/bash
clear

cat ./texts/4.txt

echo ""

cat ./texts/directions.txt

echo ""

while true; do
  read -p "> " NESW
  case $NESW in
    n) exec ./scripts/5.sh ;;
    e) "You see a wall." ;;
    s) exec ./scripts/3.sh ;;
    w) "You see a wall." ;;
    r) exec ./main.sh ;;
    *) cat ./texts/sorry.txt ;;
  esac
done

exit
