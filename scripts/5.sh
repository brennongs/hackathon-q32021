#!/bin/bash
explore() {
  clear

  cat ./texts/explore.txt

  echo "true" > ./state/HAS_KEY

  sleep .5
  echo ""
  read -r -s -p $"Press [ENTER] to continue..."
}

clear

cat ./texts/5.txt

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
      exec ./scripts/4.sh ;;
    s) exec ./scripts/3.sh ;;
    r) exec ./main.sh ;;
    *) cat ./texts/sorry.txt ;;
  esac
done

exit
