#!/usr/bin/env bash

ProgName="$(basename -- "$0")"
ScriptDir=$( cd -- "$( dirname -- "${BASH_SOURCE[0]}" )" &> /dev/null && pwd )

sub_help() {
  echo "Usage: $ProgName <theme>"
}

sub_mocha() {
  sudo sed -i "1s/^/$(cat "$ScriptDir/dist/mocha")\n/" /etc/issue
}

sub_macchiato() {
  sudo sed -i "1s/^/$(cat "$ScriptDir/dist/macchiato")\n/" /etc/issue
}

sub_latte() {
  sudo sed -i "1s/^/$(cat "$ScriptDir/dist/latte")\n/" /etc/issue
}

sub_frappe() {
  sudo sed -i "1s/^/$(cat "$ScriptDir/dist/frappe")\n/" /etc/issue
}

subcommand=$1
case $subcommand in
    "" | "-h" | "--help")
        sub_help
        ;;
    *)
        shift
        sub_"${subcommand}" "$@"
        if [ $? = 127 ]; then
            echo "Error: '$subcommand' is not a known subcommand." >&2
            echo "       Run '$ProgName --help' for a list of known subcommands." >&2
            exit 1
        fi
        ;;
esac
