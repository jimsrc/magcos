set title "Direcc. Asintóticas para Malargüe"
unset key
set grid
unset yzeroaxis
#
#s
#set label 2 "* Direccion del shift" at 143,22 font "Arial,11"
set label 1 "*" at -69.3,-35.3 font "Arial,11"
#set arrow 2 from  -47,-69 to -65,-37
#set label 3 "Malargue" at -45,-69 font "Arial,11"
#set label 4 "100GV" at -125,-30 font "Arial,12"
#set label 5 "50GV" at -69,4 font "Arial,12"
#set label 6 "30GV" at -42,15 font "Arial,12"
#set label 7 "20GV" at -9,28 font "Arial,12"

plot 'world.dat' with lines lt 3 ti ""
FILE='./DireccAsint_vs_PosicAsint'
repl FILE u 2:1:(sqrt($3*$3+$4*$4+$5*$5)) pt 5 lt pal
#repl './AsymDirec_ZEN30_.dat' u 4:3 with linespoints pt 7 lt rgb "red" ti "zen=30º"
set title ""
set key on
set border
set yzeroaxis
set xtics
set ytics
