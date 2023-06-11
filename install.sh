#!/usr/bin/env bash

files=( `cat packages.txt | tr '\n' ' '` )

for i in "${files[@]}"; do
	nix profile install $i
done
