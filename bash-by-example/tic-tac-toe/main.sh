board=(1 2 3 4 5 6 7 8 9)
player="X"

source ./board.sh
source ./winner.sh

while true; do
  clear
  print_board
  echo "Player $player, enter your move (1-9):"
  read -r move

  if ! [[ "$move" =~ ^[1-9]$ ]] || [[ "${board[move-1]}" != "$move" ]]; then
    echo "Invalid move! Try again."
    sleep 1
    continue
  fi

  board[move-1]="$player"

  if check_winner; then
    clear
    print_board
    echo "🎉 Player $player wins! 🎉"
    exit 0
  fi

  if is_board_full; then
    clear
    print_board
    echo "It's a tie! 🤝"
    exit 0
  fi

  [[ "$player" == "X" ]] && player="O" || player="X"
done
