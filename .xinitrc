compton &
feh --bg-scale med/bg_cannonmtn.jpg
if [ -f ~/.xmodmap ]; then
    xmodmap ~/.xmodmap
fi
xbindkeys
slstatus 2>&1 >/dev/null &
~/confdisp
pulseaudio --kill
pulseaudio --start
eval "$(ssh-agent -s)"
xset -dpms
exec dwm
