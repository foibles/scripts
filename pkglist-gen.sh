#!/usr/bin/bash

NOW=$(date +"%Y-%m-%d")

pacman -Qqe | grep -v "$(pacman -Qqm)" > ~/Drive/Development/Pkglists/$NOW-pkglist
