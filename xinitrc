#!/bin/sh

userresources=$HOME/.Xresources
usermodmap=$HOME/.Xmodmap
sysresources=/etc/X11/xinit/.Xresources
sysmodmap=/etc/X11/xinit/.Xmodmap

# merge in defaults and keymaps

if [ -f $sysresources ]; then

    xrdb -merge $sysresources

fi

if [ -f $sysmodmap ]; then
    xmodmap $sysmodmap
fi

if [ -f "$userresources" ]; then

    xrdb -merge "$userresources"

fi

if [ -f "$usermodmap" ]; then
    xmodmap "$usermodmap"
fi

# start some nice programs

if [ -d /etc/X11/xinit/xinitrc.d ] ; then
 for f in /etc/X11/xinit/xinitrc.d/?*.sh ; do
  [ -x "$f" ] && . "$f"
 done
 unset f
fi

# TODO -
# xsetroot -cursor_name left_ptr

# twm &
# xclock -geometry 50x50-1+1 &
# xterm -geometry 80x50+494+51 &
# xterm -geometry 80x20+494-0 &
# exec xterm -geometry 80x66+0+0 -name login

# Background
#sh ~/.dotfiles/nuf_status.sh &

# while :; do
#   "$HOME/dwm/dwm"
# done

# autocutsel -fork &
# autocutsel -selection PRIMARY -fork &
autocutsel -selection CLIPBOARD -fork &

sxhkd &

exec i3

# exec xmonad
# exec "$HOME/dwm/dwm"
# exec i3
# exec herbstluftwm --locked
# xrandr --output VGA-1 --auto --right-of HDMI-2

# ~/.fehbg &
# ~/.config/eww/launch.sh &
# exec --no-startup-id stalonetray --geometry 1x1-10+10 --config ~/.stalonetrayrc

