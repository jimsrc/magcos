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

#set yrange [-90:80]
#set xrange [-105:170]

plot 'world.dat' with lines lt 9 ti ""
#
#Hice:
#cat MALARGUE_\ AsymDirec_ZEN15_.dat ROME_AsymDirec_ZEN15.data > malarg_and_rome_asym_zen15.data
################################################################
FILE='MALARGUE_ AsymDirec_ZEN15_.dat'
set ytics -80,40,80 font "San-Serif,12"
set xtics font "San-Serif,12"
#set ylabel "Latitud [º]" font "San-Serif,12"
#set xlabel "Longitud [º]" font "San-Serif,12" offset 0,0
################################################################
repl FILE index 0 u 4:3 with linespoints pt 7 lt rgb "red" ti "100GV"
repl FILE index 1 u 4:3 with linespoints pt 7 lt rgb "dark-red" ti "50GV"
repl FILE index 2 u 4:3 with linespoints pt 7 lt rgb "dark-green" ti "30GV"
repl FILE index 3 u 4:3 with linespoints pt 7 lt rgb "orange" ti "20GV"
#repl FILE index 8 u 4:3 with linespoints pt 7 lt rgb "dark-red" ti "10GV"


set title ""
set key on
set border
set yzeroaxis
set xtics
set ytics
