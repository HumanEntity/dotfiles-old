#!/usr/bin/env bash

randArrayElement(){ arr=("${!1}"); echo ${arr["$[RANDOM % ${#arr[@]}]"]}; }

scripts=( `/bin/ls $DOTFILES_PATH/scripts/colorscripts`)
random=$((1 + $RANDOM % ${#scripts[@]}))
script=`randArrayElement "scripts[@]"`
`printf "$DOTFILES_PATH/scripts/colorscripts/$script\n"`
