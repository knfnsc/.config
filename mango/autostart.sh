#!/bin/bash

# screen sharing
/usr/lib/xdg-desktop-portal-wlr &

# wallpaper
awww-daemon &
awww img --resize crop ~/Pictures/wall.paper

# clipboard
wl-clip-persist --clipboard regular --reconnect-tries 0 &
wl-paste --type text --watch cliphist store &

# remove client-side decorations
gsettings set org.gnome.desktop.wm.preferences button-layout ''

# sudo for GUI apps
/usr/lib/xfce-polkit/xfce-polkit &

# battery
cbatticon &

# notifications
dunst &
