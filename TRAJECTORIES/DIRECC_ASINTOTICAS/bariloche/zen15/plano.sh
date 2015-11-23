set title "Direcc. Asintóticas para Malargüe"
unset key
set grid
unset yzeroaxis
#
# OBSERVING POSITION: BARILOCHE (41º09'S 71º18'W; Rc=xxGV)
set label 1 "*" at -71.3, -41.15 font "Arial,20"
#set arrow 2 from  -47,-69 to -65,-37
#set label 3 "Malargue" at -56,-64 font "Arial,11"
#set label 4 "100GV" at -125,-30 font "Arial,12"
#set label 5 "80GV" at -69,4 font "Arial,12"
#set label 6 "50GV" at -42,15 font "Arial,12"
#set label 7 "30GV" at -9,28 font "Arial,12"
#set label 8 "20GV" at 10,50 font "Arial,12"

plot 'world.dat' with lines lt 9 ti ""
#FILE='./AsymDirec_ZEN15_.dat'
FILE='./_AsymDirec_ZEN15.data'
repl FILE index 0 u 4:3 with linespoints pt 7 lt rgb "red" ti "100GV"
repl FILE index 1 u 4:3 with linespoints pt 7 lt rgb "dark-red" ti "50GV"
repl FILE index 2 u 4:3 with linespoints pt 7 lt rgb "dark-green" ti "30GV"
repl FILE index 3 u 4:3 with linespoints pt 7 lt rgb "orange" ti "20GV"
repl FILE index 4 u 4:3 with linespoints pt 7 lt rgb "dark-blue" ti "15GV"
#repl FILE index 5 u 4:3 with linespoints pt 7 lt rgb "dark-blue" ti "15GV"
#repl FILE index 7 u 4:3 with linespoints pt 7 lt rgb "pink" ti "7.0GV"
#repl FILE index 10 u 4:3 with linespoints pt 7 lt rgb "orange" ti "6.4GV"
#repl FILE index 8 u 4:3 with linespoints pt 7 lt rgb "dark-green" ti "4.0GV"
#repl FILE index 9 u 4:3 with linespoints pt 7 lt rgb "red" ti "3.1GV"
#repl './AsymDirec_ZEN30_.dat' u 4:3 with linespoints pt 7 lt rgb "red" ti "zen=30º"
set title ""
set key on
set border
set yzeroaxis
set xtics
set ytics
