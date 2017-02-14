#!/usr/bin/bash

NOW=$(date +"%Y-%m-%d")

pacman -Qqe | grep -v "$(pacman -Qqm)" > ~/$NOW-pkglist
