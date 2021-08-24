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
    e) cat ./texts/wall.txt ;;
    s) cat ./texts/wall.txt ;;
    w) cat ./texts/wall.txt ;;
    *) cat ./texts/sorry.text ;;
  esac
done

exit 
