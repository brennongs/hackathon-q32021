echo $HAS_KEY
echo "You move forward to the end of the hall. On your left, you see a door, on your right, the hall continues. Make your choice!"

while true; do
  read -p "Enter the direction that you want to move or [r] to restart the game: " NESW
  case $NESW in
    n) echo "You see a wall" ;;
    e) cat ""
      exit ;;
    s) echo "You see a wall." ;;
    w) echo "You try the door, but it is locked, unfortunately." ;;
    r) exec "./main.sh" ;;
    *) echo "Sorry, I can't help with that. Please enter 'n', 'e', 's', 'w'."
  esac
done

cat "./art/bathroom.txt"

exit
