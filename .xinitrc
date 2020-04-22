compton &
feh --bg-scale med/bg_cannonmtn.jpg
if [ -f ~/.xmodmap ]; then
    xmodmap ~/.xmodmap
fi
pulseaudio --kill
pulseaudio --start
xbindkeys
slstatus 2>&1 >/dev/null &
~/confdisp
exec dwm
