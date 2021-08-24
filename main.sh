#!/bin/bash
clear

cat ./art/splash.txt

echo
echo "..."
echo

sleep .5
cat ./texts/main.txt

read -r -s -p $"Press [ENTER] to continue or [CTRL+C] to exit..."

clear
sleep .5
exec ./scripts/1.sh n