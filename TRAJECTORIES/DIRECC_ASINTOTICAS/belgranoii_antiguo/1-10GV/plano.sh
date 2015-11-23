unset key
set grid
unset yzeroaxis
#
#s
#set label 2 "* Direccion del shift" at 143,22 font "Arial,11"
set label 1 "*" at -56,-64 font "Arial,20"
#set arrow 2 from  -47,-69 to -65,-37
#set label 3 "Malargue" at -56,-64 font "Arial,11"
#set label 4 "100GV" at -125,-30 font "Arial,12"
#set label 5 "80GV" at -69,4 font "Arial,12"
#set label 6 "50GV" at -42,15 font "Arial,12"
#set label 7 "30GV" at -9,28 font "Arial,12"
#set label 8 "20GV" at 10,50 font "Arial,12"

#
set title "Marambio (Rc=2.22GV)"
#
plot 'world.dat' with lines lt 9 ti ""
#FILE='./AsymDirec_ZEN15_.dat'
FILE='./AsymDirec_ZEN15_.dat'
repl FILE index 0 u 4:3 with linespoints pt 7 lt rgb "red" ti "10GV"
repl FILE index 1 u 4:3 with linespoints pt 7 lt rgb "dark-red" ti "5GV"
repl FILE index 2 u 4:3 with linespoints pt 7 lt rgb "dark-green" ti "2GV"
repl FILE index 3 u 4:3 with linespoints pt 7 lt rgb "orange" ti "1GV"
#repl FILE index 4 u 4:3 with linespoints pt 7 lt rgb "dark-blue" ti "4.6GV"
#repl FILE index 5 u 4:3 with linespoints pt 7 lt rgb "black" ti "3.1GV"
#repl './AsymDirec_ZEN30_.dat' u 4:3 with linespoints pt 7 lt rgb "red" ti "zen=30º"
set title ""
set key on
set border
set yzeroaxis
set xtics
set ytics
