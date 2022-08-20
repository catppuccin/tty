#!/usr/bin/env bash

if [ "$TERM" = "linux" ]; then
	printf %b '\e]P0EFF1F5' # set background color to "Base"
	printf %b '\e]P8ACB0BE' # set bright black to "Surface2"

	printf %b '\e]P74C4F69' # set text color to "Text"
	printf %b '\e]PF6C6F85' # set bright white to "Subtext0"

	printf %b '\e]P1D20F39' # set red to "Red"
	printf %b '\e]P9D20F39' # set bright red to "Red"

	printf %b '\e]P240A02B' # set green to "Green"
	printf %b '\e]PA40A02B' # set bright green to "Green"

	printf %b '\e]P3DF8E1D' # set yellow to "Yellow"
	printf %b '\e]PBDF8E1D' # set bright yellow to "Yellow"

	printf %b '\e]P41E66F5' # set blue to "Blue"
	printf %b '\e]PC1E66F5' # set bright blue to "Blue"

	printf %b '\e]P5EA76CB' # set magenta to "Pink"
	printf %b '\e]PDEA76CB' # set bright magenta to "Pink"

	printf %b '\e]P6179299' # set cyan to "Teal"
	printf %b '\e]PE179299' # set bright cyan to "Teal"

	clear
fi
