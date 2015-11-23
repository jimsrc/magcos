set title "Direcc. Asintóticas para McMurdo"
unset key
set grid
unset yzeroaxis
#
set xlabel "Geographic Longitude"
set ylabel "Geographic Latitude"
#
#s
#set label 2 "* Direccion del shift" at 143,22 font "Arial,11"
set label 1 "*" at 166.60,-77.90 font "Arial,20"
#set arrow 2 from  -47,-69 to -65,-37
#set label 3 "Malargue" at -56,-64 font "Arial,11"
#set label 4 "100GV" at -125,-30 font "Arial,12"
#set label 5 "80GV" at -69,4 font "Arial,12"
#set label 6 "50GV" at -42,15 font "Arial,12"
#set label 7 "30GV" at -9,28 font "Arial,12"
#set label 8 "20GV" at 10,50 font "Arial,12"

plot 'world.dat' with lines lt 3 ti ""
#FILE='./AsymDirec_ZEN15_.dat'
FILE="./AsymDirec_medium_ZEN00_AZIM00.out"
repl FILE u 4:3:1 lw 4 lt pal
#repl "./AsymDirec_ZEN00_AZIM00.out" u 4:3:1 lw 4 lt pal
#repl './AsymDirec_ZEN30_.dat' u 4:3 with linespoints pt 7 lt rgb "red" ti "zen=30º"
set title ""
set key on
set border
set yzeroaxis
set xtics
set ytics
