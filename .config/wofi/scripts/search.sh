#!/usr/bin/env bash

declare -A URLS

URLS=(
  ["google"]="https://www.google.com/search?q="
  ["github"]="https://github.com/search?q="
  ["stackoverflow"]="https://stackoverflow.com/search?q="
  ["imdb"]="https://www.imdb.com/find?ref_=nv_sr_fn&q="
  ["youtube"]="https://www.youtube.com/results?search_query="
)

# List for rofi
gen_list() {
    for i in "${!URLS[@]}"
    do
      echo "$i"
    done
}

main() {
  # Pass the list to rofi
  platform=$( (gen_list) | wofi -dmenu -matching fuzzy -no-custom -location 0 -p "Search > " )

  if [[ -n "$platform" ]]; then
    query=$( (echo ) | wofi  -dmenu -matching fuzzy -location 0 -p "Query > " )

    if [[ -n "$query" ]]; then
      url=${URLS[$platform]}$query
      xdg-open "$url"
    else
      exit
    fi

  else
    exit
  fi
}

main

exit 0
