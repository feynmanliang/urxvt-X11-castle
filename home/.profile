#!/bin/bash

export PATH=~/.local/bin:~/bin:$PATH

# Running QT5 outside of desktop environment
[ "$XDG_CURRENT_DESKTOP" = "KDE" ] || [ "$XDG_CURRENT_DESKTOP" = "GNOME" ] || export QT_AUTO_SCREEN_SCALE_FACTOR=0
[ "$XDG_CURRENT_DESKTOP" = "KDE" ] || [ "$XDG_CURRENT_DESKTOP" = "GNOME" ] || export QT_QPA_PLATFORMTHEME="qt5ct"

