#/bin/bash

# yuri - custom startup for openbox without a desktop environment
#      - I made it executable so I can rerun it
#      - #!/bin/bash is not the default first line

# no longer necessary to run xrandr - lightdm uses mirror_displays.sh at display startup
# xrandr --output LVDS1 --mode 1366x768 --output HDMI1 --mode 1360x768 --same-as LVDS1

# set wallpaper
# hsetroot -fill ~/images/wallpaper.png

# start compositor
# compton --config "$HOME/.config/compton.conf" --xrender-sync-fence

# recent system update starts nm-applet automatically (daemon support?)
# nm-applet &

# perhaps not the best place to start an automount daemon
# but I'm not sure there's a better option for the moment
# OBE - udevil + spacefm installed instead, Nov 2015
# udiskie --tray &

# volumeicon &

# desktop terminal
# urxvt -name URxvtDesktop & 

# start task manager
# tint2 &

# start conky system monitor(s)
# conky -c ~/.config/conky/conkyrc_lua_solarized &
# conky -c "$HOME/.config/conky/stickyclock.conky" &
#/usr/local/bin/conkystart.sh

# start openbox with numlock on
#numlockx on &

# start insync
# insync start &

# start redshift
#redshift &

# turn off hardware beep
# xset b off &

# launch wallpaper script
# fehbg.sh &

