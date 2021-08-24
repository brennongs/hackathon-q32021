#!/bin/bash
explore() {
  clear

  cat ./texts/explore.txt

  echo "true" > ./state/HAS_KEY

  sleep .5
  echo ""
  read -r -s -p $"Press [ENTER] to continue..."
}

emptyroom() {
  echo "You already took the key..."
  echo ""
  echo "s (south/exit room)"

  while true; do
    read -p "> " NESW
    case $NESW in
      n) emptyroom ;;
      e) cat ./texts/wall.txt ;;
      s) exec ./scripts/3.sh s ;;
      w) cat ./texts/wall.txt ;;
      r) exec ./main.sh ;;
      *) cat ./texts/sorry.txt ;;
    esac
  done 
}

clear

if [ $1 = 'n' ]; then
  cat ./texts/5.txt
  echo ""
  echo "
  n (north/take key)
  s (south/exit room)
  "

  echo ""

  while true; do
    read -p "> " NESW
    case $NESW in
      n) explore; exec ./scripts/4.sh s;;
      s) exec ./scripts/3.sh s;;
      r) exec ./main.sh ;;
      *) cat ./texts/sorry.txt ;;
      esac
  done
else
  emptyroom
fi

exit
