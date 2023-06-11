#!/bin/sh

if [ -f "packages.txt" ]; then
	rm packages.txt
fi
packages=`nix profile list | cut -d' ' -f2`
printf "$packages\n" >> packages.txt

if [ ! -d "config" ]; then
	mkdir config
fi

rm -rf ./config/*
cp -r ~/.config/nvim ./config/nvim
cp -r ~/.config/alacritty ./config/alacritty
cp -r ~/.config/tmux ./config/tmux
cp -r ~/.config/nix ./config/nix

if [ ! -d "scripts" ]; then
	mkdir scripts
fi
rm -rf ./scripts/
cp -r ~/.scripts scripts
