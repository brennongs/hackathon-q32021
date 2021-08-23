echo "Nice work, you now find yourself in the living room."

while true; do
  read -p "Enter the direction that you want to move or [r] to restart the game: " NESW
  case $NESW in
    n) echo "You've reach a door but, it's locked. Sorry." ;;
    e) cat "./art/bathroom.txt"
      exit ;;
    s) echo "You see a wall." ;;
    w) echo "You see a window. Keep searching!" ;;
    r) exec "./main.sh" ;;
    *) echo "Sorry, I can't help with that. Please enter 'n', 'e', 's', 'w'."
  esac
done

cat "./art/bathroom.txt"

exit
