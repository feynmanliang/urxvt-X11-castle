#!/bin/sh
#
# ~/.xinitrc
#
# Executed by startx (run your window manager from here)

if [ -d /etc/X11/xinit/xinitrc.d ]; then
  for f in /etc/X11/xinit/xinitrc.d/*; do
    [ -x "$f" ] && . "$f"
  done
  unset f
fi

# load arch JRE
# source /etc/profile.d/jre.sh

# .Xresources
xrdb -load ~/.Xresources &

# screen resolution
# ./.screenlayout/External1080p.sh &

# swap caps lock and esc, speed up key repeat
~/bin/Speedswapper.sh &

# laptop fn keys
xbindkeys &

# keyboard repeat rate
xset r rate 200 40

# set the cursor
xsetroot -cursor_name left_ptr &

# automount devices
devmon &

# screensaver
/usr/bin/xscreensaver -no-splash &

# compositing
compton &

# volume notifications
volnoti &

# Dropbox
dropbox &

# wallpaper
sh ~/bin/wallpaper.sh

# screen dimming
redshift-gtk &

# pulseaudio system tray
pasystray &

# screencloud
screencloud &

# urxvt daemon
# urxvtd -q -o -f &

source ~/.profile

exec $1
