xset r rate 300 100

feh --bg-scale ~/Pictures/1.jpg &
exec xinput set-prop 10 "Device Enabled" 0 &

setxkbmap -option "ctrl:swapcaps" && setxkbmap -layout us,ru && setxkbmap -option 'grp:alt_shift_toggle' &
exec dwmblocks &
exec dwm
