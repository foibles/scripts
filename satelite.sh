#!/usr/bin/bash
sleep 5
wget -N -P /home/reuove/Wallpaper/wallpaper.jpg 'Mozilla' "http://oiswww.eumetsat.org/IPPS/html/latestImages/EUMETSAT_MSG_MPE-westernEurope.jpg"
sleep 5
exec feh --bg-scale /home/reuove/Wallpaper/wallpaper.jpg
