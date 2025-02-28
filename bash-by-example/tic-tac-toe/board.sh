print_board() {
  echo "
  ${board[0]} ${board[1]} ${board[2]}
  -----
  ${board[3]} ${board[4]} ${board[5]}
  -----
  ${board[6]} ${board[7]} ${board[8]}
  "
}

is_board_full() {
  for i in ${board[@]}; do
    if [[ $i =~ ^[0-9]$ ]]; then
      return 1
    fi
  done

  return 0
}
