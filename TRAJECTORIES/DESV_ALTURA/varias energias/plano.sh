set title "Direcc. Asintóticas para Malargüe"
unset key
set grid
unset yzeroaxis
#
#s
#set label 2 "* Direccion del shift" at 143,22 font "Arial,11"
set label 1 "*" at -69.3,-35.3 font "Arial,11"
set arrow 2 from  -47,-69 to -65,-37
set label 3 "Malargue" at -45,-69 font "Arial,11"
#set label 4 "100GV" at -125,-30 font "Arial,12"
#set label 5 "50GV" at -69,4 font "Arial,12"
#set label 6 "30GV" at -42,15 font "Arial,12"
#set label 7 "20GV" at -9,28 font "Arial,12"

plot 'world.dat' with lines lt 3 ti ""
#FILE='./AsymDirec_ZEN15_.dat'
FILE='./AsymDirec_ZEN00_AZIM00.out'
repl FILE index 0 u 4:3:1 pt 7 lt pal ti "ZEN = 0º"
#repl FILE index 1 u 4:3 with linespoints pt 7 lt rgb "red" ti "zen=15º"
#repl FILE index 2 u 4:3 with linespoints pt 7 lt rgb "dark-green" ti "zen=15º"
#repl FILE index 3 u 4:3 with linespoints pt 7 lt rgb "dark-orange" ti "zen=15º"
#repl './AsymDirec_ZEN30_.dat' u 4:3 with linespoints pt 7 lt rgb "red" ti "zen=30º"
set title ""
set key on
set border
set yzeroaxis
set xtics
set ytics
