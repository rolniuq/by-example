check_winner() {
  local combos=(
    "0 1 2" "3 4 5" "6 7 8"
    "0 3 6" "1 4 7" "2 5 8"
    "0 4 8" "2 4 6"
  )

  for combo in ${combos[@]}; do
    echo "combo: $combo" 
    if [[ ${board[$1]} == $player && ${board[$2]} == $player && ${board[$3]} == $player ]]; then
      return 0
    fi
  done

  return 1
}
