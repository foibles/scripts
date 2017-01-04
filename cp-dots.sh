#!/usr/bin/bash

dir="/home/foible/Code/Dotfiles"
now=$(date +"%Y-%m-%d")

mkdir $dir/$now-dotfiles/
mkdir $dir/$now-dotfiles/config

cp /home/foible/.vimrc $dir/$now-dotfiles/vimrc
cp /home/foible/.xinitrc $dir/$now-dotfiles/xinitrc
cp /home/foible/.Xresources $dir/$now-dotfiles/Xresources
cp /home/foible/.zprofile $dir/$now-dotfiles/zprofile
cp /home/foible/.zshrc $dir/$now-dotfiles/zshrc


cp -r  /home/foible/.config/qutebrowser  $dir/$now-dotfiles/config/qutebrowser
cp -r  /home/foible/.config/bspwm  $dir/$now-dotfiles/config/bspwm
cp -r  /home/foible/.config/ranger  $dir/$now-dotfiles/config/ranger
cp -r  /home/foible/.config/sxhkd  $dir/$now-dotfiles/config/sxhkd
