compton &
feh --bg-fill /media/D/Photos/scifi/ship_ls.jpeg
if [ -f ~/.xmodmap ]; then
    xmodmap ~/.xmodmap
fi
xbindkeys
slstatus 2>&1 >/dev/null &
~/confdisp dvi_extend
pulseaudio --kill
pulseaudio --start
eval "$(ssh-agent -s)"
xset -dpms
xset s off
redshift -l 43.008663:-71.454391 &
exec dwm
