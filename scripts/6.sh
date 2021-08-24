#!/bin/bash
echo "false" > ./state/HAS_KEY
clear

cat ./art/toilet.txt

while read -r LINE; do
  echo "$LINE"
done <"./texts/6.txt"

sleep 1
echo ""
echo "This is the end of your simulation"

sleep 2
echo ""
echo "Goodbye!"
exit