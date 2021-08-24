#!/bin/bash
clear

cat ./art/splash.txt

echo
echo "..."
echo

sleep .5
while read -r LINE; do
  echo "$LINE"
done <"./texts/main.txt"

read -r -s -p $"Press [ENTER] to continue or [CTRL+C] to exit..."

clear
sleep .5
./scripts/1.sh