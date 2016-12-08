#!/usr/bin/bash
# remove unused dependencies
pacman -Rsn $(pacman -Qdtq)
