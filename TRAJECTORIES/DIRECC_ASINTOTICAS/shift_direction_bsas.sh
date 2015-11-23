reset
clear
#set title "Direcc. Asintóticas para Malargüe"
set grid
#unset yzeroaxis
#
#s
set label 1 "x" at 143,22 font "Arial,13"
set label 2 "shift direction" at 50, -10 font "Arial,15"
set label 3 "*" at -58.44, -34.54font "Arial,20" # BsAs
set label 5 "Bs.As." at -83, -50 font "Arial,15"
#
plot 'world.dat' with lines lt 3 noti
#FILE='./AsymDirec_ZEN15_.dat'

