#!/usr/bin/env bash

layout="$(
  mmsg get all-tags |
  jq -r '.all_tags[].tags[] | select(.is_active) | .layout'
)"

case "$layout" in
  CT) echo "center_tile" ;;
  K)  echo "deck" ;;
  DW) echo "dwindle" ;;
  F)  echo "fair" ;;
  G)  echo "grid" ;;
  M)  echo "monocle" ;;
  RT) echo "right_tile" ;;
  S)  echo "scroller" ;;
  T)  echo "tile" ;;
  VK) echo "vertical_deck" ;;
  VF) echo "vertical_fair" ;;
  VG) echo "vertical_grid" ;;
  VS) echo "vertical_scroller" ;;
  VT) echo "vertical_tile" ;;
  *)  echo "unknown" ;;
esac
