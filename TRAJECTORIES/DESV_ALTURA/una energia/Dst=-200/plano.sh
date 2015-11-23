set title "Direcc. Asintóticas para Malargüe"
unset key
set grid
unset yzeroaxis
#
set label 1 "*" at -69.3,-35.3 font "Arial,11"
#
set cbrange [0:14]
#
plot 'world.dat' with lines lt 3 ti ""
repl './100GV_dat' u 2:1:(sqrt($3*$3+$4*$4+$5*$5)-1) pt 7 lt pal ti '100GV'
repl './15GV_dat' u 2:1:(sqrt($3*$3+$4*$4+$5*$5)-1) pt 7 lt pal ti '15GV'
#repl './AsymDirec_ZEN30_.dat' u 4:3 with linespoints pt 7 lt rgb "red" ti "zen=30º"
set title ""
set key on
set border
set yzeroaxis
set xtics
set ytics
