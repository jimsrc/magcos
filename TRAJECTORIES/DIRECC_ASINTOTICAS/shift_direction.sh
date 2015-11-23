reset
clear

#set title "Direcc. Asintóticas para Malargüe"
unset key
set grid
#unset yzeroaxis
#
#s
set label 1 "x" at 143,22 font "Arial,13"
set label 2 "Direccion de\n Desplazamiento" at 100,55 font "Arial,15"
set label 3 "*" at -69.3,-35.3 font "Arial,15"
#set arrow 2 from  -47,-69 to -65,-37
set label 5 "Malargue" at -83.3,-40.3 font "Arial,15"

plot 'world.dat' with lines lt 3 ti ""
#FILE='./AsymDirec_ZEN15_.dat'

set title ""
set key on
set border
set yzeroaxis
set xtics
set ytics
