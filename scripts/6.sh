#!/bin/bash
echo "false" > ./state/HAS_KEY

while read -r LINE; do
  echo "$LINE"
done <"./art/toilet.txt"

while read -r LINE; do
  echo "$LINE"
done <"./texts/6.txt"

sleep 1
read -r -s -p $"Press [ENTER] to exit your simulation."

exit