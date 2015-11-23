set title "Direcc. Asintóticas para Malargüe"
unset key
set grid
unset yzeroaxis
#
#s
#set label 2 "* Direccion del shift" at 143,22 font "Arial,11"
#set label 1 "*" at -56,-64 font "Arial,20" #Marambio
set label 1 "*" at 12.47, 41.86 font "Arial,20" #Rome
set label 2 "*" at -69.3, -35.3 font "Arial,20" #Malargue
#set arrow 2 from  -47,-69 to -65,-37
#set label 3 "Malargue" at -56,-64 font "Arial,11"
#set label 4 "100GV" at -125,-30 font "Arial,12"
#set label 5 "80GV" at -69,4 font "Arial,12"
#set label 6 "50GV" at -42,15 font "Arial,12"
#set label 7 "30GV" at -9,28 font "Arial,12"
#set label 8 "20GV" at 10,50 font "Arial,12"


plot 'world.dat' with lines lt 3 ti ""
#
#Hice:
#cat MALARGUE_\ AsymDirec_ZEN15_.dat ROME_AsymDirec_ZEN15.data > malarg_and_rome_asym_zen15.data
################################################################
FILE='./_AsymDirec_ZEN15.data'
#repl FILE index 7 u 4:3 with linespoints pt 7 lt rgb "pink" ti "7.0GV"
#repl FILE index 10 u 4:3 with linespoints pt 7 lt rgb "orange" ti "6.4GV"
################################################################
repl FILE index 0 u 4:3 with linespoints pt 7 lt rgb "black" ti "30GV"
repl FILE index 1 u 4:3 with linespoints pt 7 lt rgb "red" ti "20GV"
repl FILE index 2 u 4:3 with linespoints pt 7 lt rgb "dark-blue" ti "10GV"
#repl FILE index 8 u 4:3 with linespoints pt 7 lt rgb "dark-red" ti "10GV"


set title ""
set key on
set border
set yzeroaxis
set xtics
set ytics
