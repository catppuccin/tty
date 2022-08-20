#!/usr/bin/env bash

if [ "$TERM" = "linux" ]; then
	printf %b '\e]P0303446' # set background color to "Base"
	printf %b '\e]P8626880' # set bright black to "Surface2"

	printf %b '\e]P7C6D0F5' # set text color to "Text"
	printf %b '\e]PFA5ADCE' # set bright white to "Subtext0"

	printf %b '\e]P1E78284' # set red to "Red"
	printf %b '\e]P9E78284' # set bright red to "Red"

	printf %b '\e]P2A6D189' # set green to "Green"
	printf %b '\e]PAA6D189' # set bright green to "Green"

	printf %b '\e]P3E5C890' # set yellow to "Yellow"
	printf %b '\e]PBE5C890' # set bright yellow to "Yellow"

	printf %b '\e]P48CAAEE' # set blue to "Blue"
	printf %b '\e]PC8CAAEE' # set bright blue to "Blue"

	printf %b '\e]P5F4B8E4' # set magenta to "Pink"
	printf %b '\e]PDF4B8E4' # set bright magenta to "Pink"

	printf %b '\e]P681C8BE' # set cyan to "Teal"
	printf %b '\e]PE81C8BE' # set bright cyan to "Teal"

	clear
fi
