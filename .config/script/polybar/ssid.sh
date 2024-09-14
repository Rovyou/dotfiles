#!/bin/bash

nmcli_output=$(nmcli -t -f name connection show --active)

first_line=$(echo "$nmcli_output" | head -n 1 | sed 's/\s*$/ 󰖩/')

if [[ "$first_line" == *"lo"* ]]; then
	echo "not connected 󰖩"
else
	echo "$first_line"
fi
