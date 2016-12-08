#!/usr/bin/bash

dir="/home/foibles/Drive/Development/Dotfiles"
now=$(date +"%Y-%m-%d")

mkdir $dir/$now-dotfiles/
mkdir $dir/$now-dotfiles/config

cp /home/foibles/.vimrc $dir/$now-dotfiles/vimrc
cp /home/foibles/.xinitrc $dir/$now-dotfiles/xinitrc
cp /home/foibles/.Xresources $dir/$now-dotfiles/Xresources
cp /home/foibles/.zprofile $dir/$now-dotfiles/zprofile
cp /home/foibles/.zshrc $dir/$now-dotfiles/zshrc


cp -r  /home/foibles/.config/qutebrowser  $dir/$now-dotfiles/config/qutebrowser
cp -r  /home/foibles/.config/bspwm  $dir/$now-dotfiles/config/bspwm
cp -r  /home/foibles/.config/ranger  $dir/$now-dotfiles/config/ranger
cp -r  /home/foibles/.config/sxhkd  $dir/$now-dotfiles/config/sxhkd
