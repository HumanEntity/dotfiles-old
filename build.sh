#!/bin/sh

if [ ! -d "config" ]; then
	mkdir config
fi

rm -rf ./config/*
cp -r ~/.config/nvim ./config/nvim
cp -r ~/.config/alacritty ./config/alacritty
cp -r ~/.config/tmux ./config/tmux

cp -r ~/.scripts scripts
