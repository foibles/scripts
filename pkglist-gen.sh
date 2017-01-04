#!/usr/bin/bash

NOW=$(date +"%Y-%m-%d")

pacman -Qqe | grep -v "$(pacman -Qqm)" > ~/Code/Pkglists/$NOW-pkglist
