unset key
set grid
unset yzeroaxis
#
# Ubicacion del detector:
# BELGRANO II (77.87ºS, 34.62ºO; Rc=xxGV) 
#
set label 1 "*" at -34.62,-77.87 font "Arial,20"
#
set title "Marambio (Rc=2.22GV)"
#
plot 'world.dat' with lines lt 9 ti ""
#FILE='./AsymDirec_ZEN15_.dat'
FILE='./AsymDirec_ZEN15_.dat'
repl FILE index 0 u 4:3 with linespoints pt 7 lt rgb "red" ti "100GV"
repl FILE index 1 u 4:3 with linespoints pt 7 lt rgb "dark-red" ti "40GV"
repl FILE index 2 u 4:3 with linespoints pt 7 lt rgb "dark-green" ti "20GV"
repl FILE index 3 u 4:3 with linespoints pt 7 lt rgb "orange" ti "10GV"
#repl FILE index 4 u 4:3 with linespoints pt 7 lt rgb "dark-blue" ti "4.6GV"
#repl FILE index 5 u 4:3 with linespoints pt 7 lt rgb "black" ti "3.1GV"
#repl './AsymDirec_ZEN30_.dat' u 4:3 with linespoints pt 7 lt rgb "red" ti "zen=30º"
set title ""
set key on
set border
set yzeroaxis
set xtics
set ytics
