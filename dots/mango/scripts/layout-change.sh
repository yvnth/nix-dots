#!/usr/bin/env bash
set -euo pipefail

layout_names=(
  "center_tile"
  "deck"
  "dwindle"
  "grid"
  "monocle"
  "right_tile"
  "scroller"
  "tile"
  "vertical_deck"
  "vertical_grid"
  "vertical_scroller"
  "vertical_tile"
)

layout_codes=(
  "CT"
  "K"
  "TG"
  "G"
  "M"
  "RT"
  "S"
  "T"
  "VK"
  "VG"
  "VS"
  "VT"
)

index="$(
  printf '%s\n' "${layout_names[@]}" |
  rofi -dmenu -i -p "Layout:"
)"

[[ -z "$index" ]] && exit 0

selected="$index"

for i in "${!layout_names[@]}"; do
  if [[ "${layout_names[$i]}" == "$selected" ]]; then
    layout_code="${layout_codes[$i]}"
    layout_name="${layout_names[$i]}"
    break
  fi
done

mmsg -s -l "$layout_code"

notify-send \
  -a "MangoWM Layout Changed" \
  -u low \
  -t 3000 \
  -h string:x-canonical-private-synchronous:mango-layout \
  -i "$HOME/.config/mango/assets/nixgo.png" \
  " Layout Changed" \
  "$layout_name"
