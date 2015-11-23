#set title "Direcc. Asintóticas para Malargüe"
unset key
set grid
unset yzeroaxis
#

set xtics -70,20,120 font "San-Serif,13" offset 0,0
set ytics font "San-Serif,13" offset 0,0
plot 'world.dat' with lines lt 3 ti ""
#
#Hice:
#cat MALARGUE_\ AsymDirec_ZEN15_.dat ROME_AsymDirec_ZEN15.data > malarg_and_rome_asym_zen15.data
################################################################
set xlabel "Longitud Geográfica [º]" font "San-Serif,13"
set ylabel "Latitud Geográfica [º]" font "San-Serif,13"
# leyenda
set key right bottom
# rigideces
set label 1 "10GV" at 73,0 font "Arial,14"
set label 2 "20GV" at 0,-5 font "Arial,14"
set label 3 "30GV" at -18,-22 font "Arial,14"
# malargue position
set label 4 "*" at -69.3, -35.3 font "Arial,20" #Malargue
################################################################
repl "./0nT.out" u ($1==10?$4:1/0):3 pt 5 ps 2 lt 1 noti
repl "./-100nT.out" u ($1==10?$4:1/0):3 pt 5 ps 2 lt 2 noti
repl "./-200nT.out" u ($1==10?$4:1/0):3 pt 5 ps 2 lt 3 noti
repl "./-300nT.out" u ($1==10?$4:1/0):3 pt 5 ps 2 lt 4 noti
repl "./-400nT.out" u ($1==10?$4:1/0):3 pt 5 ps 2 lt 5 noti

repl "./0nT.out" u ($1==20?$4:1/0):3 pt 5 ps 2 lt 1 noti
repl "./-100nT.out" u ($1==20?$4:1/0):3 pt 5 ps 2 lt 2 noti
repl "./-200nT.out" u ($1==20?$4:1/0):3 pt 5 ps 2 lt 3 noti
repl "./-300nT.out" u ($1==20?$4:1/0):3 pt 5 ps 2 lt 4 noti 
repl "./-400nT.out" u ($1==20?$4:1/0):3 pt 5 ps 2 lt 5 noti

repl "./0nT.out" u ($1==30?$4:1/0):3 pt 5 ps 2 lt 1 ti "Dst=0nT"
repl "./-100nT.out" u ($1==30?$4:1/0):3 pt 5 ps 2 lt 2 ti "Dst=-100nT"
repl "./-200nT.out" u ($1==30?$4:1/0):3 pt 5 ps 2 lt 3 ti "Dst=-200nT"
repl "./-300nT.out" u ($1==30?$4:1/0):3 pt 5 ps 2 lt 4 ti "Dst=-300nT"
repl "./-400nT.out" u ($1==30?$4:1/0):3 pt 5 ps 2 lt 5 ti "Dst=-400nT"


set title ""
set key on
set border
set yzeroaxis
set xtics
set ytics
