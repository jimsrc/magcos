set title "Direcc. Asintóticas para Marambio (Rc=2.22GV)"
unset key
set grid
unset yzeroaxis
#

set label 1 "*" at -56.63, -64.14 font "Arial,20"

plot 'world.dat' with lines lt 9 ti ""
#FILE='./AsymDirec_ZEN15_.dat'
FILE="./AsymDirec_medium_ZEN00_AZIM00.out"
repl FILE u 4:3:1 pt 5 ps 2 pal
#repl "./AsymDirec_ZEN00_AZIM00.out" u 4:3:1 lw 4 lt pal
#repl './AsymDirec_ZEN30_.dat' u 4:3 with linespoints pt 7 lt rgb "red" ti "zen=30º"
set title ""
set key on
set border
set yzeroaxis
set xtics
set ytics
