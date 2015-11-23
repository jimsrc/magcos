set title "Direcc. Asintóticas para Malargüe"
unset key
set grid
unset yzeroaxis
#
set label 1 "100GV" at -100,-30 font "Arial,10"
set label 2 "50GV" at -57,-11 font "Arial,10"
set label 3 "30GV" at -9,-30 font "Arial,10"
set label 4 "20GV" at 9,-2 font "Arial,10"
set label 5 "*" at -69.3,-35.3 font "Arial,20"

plot 'world.dat' with lines lt 3 ti ""
repl './AsymDirec_ZEN15.dat' u 4:3 with linespoints pt 7 lt rgb "red" ti "zen=15º"
#repl './AsymDirec_ZEN30_.dat' u 4:3 with linespoints pt 7 lt rgb "red" ti "zen=30º"
set title ""
set key on
set border
set yzeroaxis
set xtics
set ytics

