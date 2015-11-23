clear
set grid
unset yzeroaxis
set macros
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
#set title "Marambio (Rc=2.3GV)"
#
plot 'world.dat' with lines lt 9 ti ""
#FILE='./AsymDirec_ZEN15_.dat'
FILE='./AsymDirec_ZEN15_.dat'
usin='u 4:3 w lp pt 5 ps .3 lw 2'
repl FILE index 0 @usin lt rgb "red" ti "100GV"
repl FILE index 1 @usin lt rgb "dark-red" ti "50GV"
repl FILE index 2 @usin lt rgb "dark-green" ti "20GV"
repl FILE index 3 @usin lt rgb "orange" ti "10GV"
repl FILE index 4 @usin lt rgb "dark-blue" ti "4.6GV"
repl FILE index 5 @usin lt rgb "black" ti "3.1GV"
#repl './AsymDirec_ZEN30_.dat' u 4:3 with linespoints pt 7 lt rgb "red" ti "zen=30º"
set xlabel "longitude [deg]"
set ylabel "latitude [deg]"
set xrange [-110:70]
set yrange [-80:50]
#set title ""
set key on box right bottom
set border
set yzeroaxis
set xtics
set ytics
