xrdb ~/.Xresources
xrandr --dpi 100.00

compton -b &
mpd &
nitrogen --restore &
conky &
xsetroot -cursor_name left_ptr
ibus-daemon &
i3blocks &

exec i3

#export PATH=$PATH:/usr/dt/bin
#export LANG=C
#startx /usr/dt/bin/Xsession
