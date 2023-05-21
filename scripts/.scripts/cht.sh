#!/usr/bin/env bash

languages=`echo "rust c cpp golang" | tr ' ' '\n '`
core_utils=`echo "xargs find mv" | tr ' ' '\n'`

selected=`printf "$languages\n$core_utils" | fzf`
read -p "query: " query
echo "selected $selected"

if printf $languages | grep -qs $selected; then
	# tmux neww bash -c "echo \"curl cht.sh/$selected/$query/\" & curl cht.sh/$selected/$query & while [ : ]; do sleep 1; done"
	tmux neww bash -c "curl cht.sh/$selected/`echo $query | tr ' ' '+'` | bat -p"
else
	tmux neww bash -c "curl cht.sh/$selected~$query | bat -p"
fi

