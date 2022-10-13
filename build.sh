#!/usr/bin/env bash
ScriptDir=$( cd -- "$( dirname -- "${BASH_SOURCE[0]}" )" &> /dev/null && pwd )

mkdir "$ScriptDir/dist" &>/dev/null
rm -f "$ScriptDir/dist/*"

"$ScriptDir/src/frappe.sh" >> "$ScriptDir/dist/frappe"
"$ScriptDir/src/latte.sh" >> "$ScriptDir/dist/latte"
"$ScriptDir/src/macchiato.sh" >> "$ScriptDir/dist/macchiato"
"$ScriptDir/src/mocha.sh" >> "$ScriptDir/dist/mocha"

