xset r rate 300 100

feh --bg-scale ~/Pictures/1.jpeg &
exec xinput set-prop 10 "Device Enabled" 0 &
xinput set-prop 11 325 1 &

setxkbmap -option "ctrl:swapcaps" && setxkbmap -layout us,ru && setxkbmap -option 'grp:alt_shift_toggle' &
#exec dwmblocks &
picom &
polybar &
exec stumpwm
