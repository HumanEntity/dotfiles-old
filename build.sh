#!/bin/sh

if [ -f "packages.txt" ]; then
	rm packages.txt
fi
packages=`nix-env -q | tr ' ' '\n'`
printf "$packages\n" >> packages.txt

if [ ! -d "config" ]; then
	mkdir config
fi

rm -rf ./config/*
cp -r ~/.config/nvim ./config/nvim
cp -r ~/.config/alacritty ./config/alacritty
cp -r ~/.config/tmux ./config/tmux

if [ ! -d "scripts" ]; then
	mkdir scripts
fi
rm -rf ./scripts/
cp -r ~/.scripts scripts
