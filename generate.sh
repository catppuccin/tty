#!/usr/bin/env bash

ProgName="$(basename -- "$0")"
ScriptDir=$( cd -- "$( dirname -- "${BASH_SOURCE[0]}" )" &> /dev/null && pwd )

sub_help() {
  echo "Usage: $ProgName <theme>"
  echo "Available themes:"
  echo "  mocha"
  echo "  macchiato"
  echo "  latte"
  echo "  frappe"
}

subcommand="$1"
case "$subcommand" in
  "" | "-h" | "--help")
    sub_help
    exit
    ;;
  mocha | macchiato | latte | frappe)
    . "${ScriptDir}/themes/${subcommand}.sh" || exit 1
    default_red=()
    default_grn=()
    default_blu=()
    IFS=','
    for i in "${colors[@]}"; do
      read -r r g b <<< "$i"
      default_red+=("$r")
      default_grn+=("$g")
      default_blu+=("$b")
    done
    echo "vt.default_red=${default_red[*]} vt.default_grn=${default_grn[*]} vt.default_blu=${default_blu[*]}"
    unset IFS
    ;;
  *)
    echo "Error: '$subcommand' is not a known theme." >&2
    echo "Run '$ProgName --help' for help." >&2
    exit 1
    ;;
esac
