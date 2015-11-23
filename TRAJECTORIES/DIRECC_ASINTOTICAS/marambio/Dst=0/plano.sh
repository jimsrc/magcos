##
#
set grid
set key right bottom
set xlabel "geographic longitude [º]" font "San-Serif,13"
set ylabel "geographic latitude [º]" font "San-Serif,13"
# rigideces
set label 1 "3GV" at 20,5 font "Arial,14"
set label 2 "20GV" at 0,-30 font "Arial,14"
set label 3 "90GV" at -28,-58 font "Arial,14"
# Buenos Aires "*"
set label 4 "*" at (303.37-360), -64.23 font "Arial,20" #Malargue
# limites del ploteo
set xrange[-80:110]
set yrange [-70:30]
#----------------------------------------------------------
# mapa
plot 'world.dat' with lines lt 3 ti ""
# rigideces
R1=3.1
R2=19.9
R3=91
# rigidez R1
repl "./000nT.out" u ($1==R1?$4:1/0):3 pt 5 ps 2 lt 1 noti
repl "./100nT.out" u ($1==R1?$4:1/0):3 pt 5 ps 2 lt 2 noti
repl "./200nT.out" u ($1==R1?$4:1/0):3 pt 5 ps 2 lt 3 noti
repl "./300nT.out" u ($1==R1?$4:1/0):3 pt 5 ps 2 lt 4 noti
repl "./400nT.out" u ($1==R1?$4:1/0):3 pt 5 ps 2 lt 5 noti
# rigidez R2
repl "./000nT.out" u ($1==R2?$4:1/0):3 pt 5 ps 2 lt 1 noti
repl "./100nT.out" u ($1==R2?$4:1/0):3 pt 5 ps 2 lt 2 noti
repl "./200nT.out" u ($1==R2?$4:1/0):3 pt 5 ps 2 lt 3 noti
repl "./300nT.out" u ($1==R2?$4:1/0):3 pt 5 ps 2 lt 4 noti
repl "./400nT.out" u ($1==R2?$4:1/0):3 pt 5 ps 2 lt 5 noti
# rigidez R3
repl "./000nT.out" u ($1==R3?$4:1/0):3 pt 5 ps 2 lt 1 ti "Dst=0"
repl "./100nT.out" u ($1==R3?$4:1/0):3 pt 5 ps 2 lt 2 ti "Dst=100"
repl "./200nT.out" u ($1==R3?$4:1/0):3 pt 5 ps 2 lt 3 ti "Dst=200"
repl "./300nT.out" u ($1==R3?$4:1/0):3 pt 5 ps 2 lt 4 ti "Dst=300"
repl "./400nT.out" u ($1==R3?$4:1/0):3 pt 5 ps 2 lt 5 ti "Dst=400"
