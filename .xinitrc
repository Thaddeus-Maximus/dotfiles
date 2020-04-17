xrandr --output eDP-1 --auto --right-of DP-2-2
compton &
feh --bg-scale med/bg_cannonmtn.jpg
if [ -f ~/.xmodmap ]; then
    xmodmap ~/.xmodmap
fi
pulseaudio --start
xbindkeys
exec dwm
