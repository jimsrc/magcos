##
#
set grid
set key bottom right
set xlabel "geographic longitude [º]" font "San-Serif,13"
set ylabel "geographic latitude [º]" font "San-Serif,13"
# rigideces
set label 1 "10GV" at 73,0 font "Arial,14"
set label 2 "20GV" at 0,-11 font "Arial,14"
set label 3 "30GV" at -18,-28 font "Arial,14"
# Buenos Aires "*"
set label 4 "*" at -58.44, -34.54font "Arial,20" # BsAs
# limites del ploteo
set xrange[-80:110]
set yrange [-70:30]
#----------------------------------------------------------
plot 'world.dat' with lines lt 3 ti ""
R1=10
# 10GV
repl "./000nT.out" u ($1==R1?$4:1/0):3 pt 5 ps 2 lt 1 noti
repl "./100nT.out" u ($1==R1?$4:1/0):3 pt 5 ps 2 lt 2 noti
repl "./200nT.out" u ($1==R1?$4:1/0):3 pt 5 ps 2 lt 3 noti
repl "./300nT.out" u ($1==R1?$4:1/0):3 pt 5 ps 2 lt 4 noti
repl "./400nT.out" u ($1==R1?$4:1/0):3 pt 5 ps 2 lt 5 noti
# 20GV
repl "./000nT.out" u ($1==20?$4:1/0):3 pt 5 ps 2 lt 1 noti
repl "./100nT.out" u ($1==20?$4:1/0):3 pt 5 ps 2 lt 2 noti
repl "./200nT.out" u ($1==20?$4:1/0):3 pt 5 ps 2 lt 3 noti
repl "./300nT.out" u ($1==20?$4:1/0):3 pt 5 ps 2 lt 4 noti
repl "./400nT.out" u ($1==20?$4:1/0):3 pt 5 ps 2 lt 5 noti
# 30GV
repl "./000nT.out" u ($1==30?$4:1/0):3 pt 5 ps 2 lt 1 ti "Dst=0"
repl "./100nT.out" u ($1==30?$4:1/0):3 pt 5 ps 2 lt 2 ti "Dst=100"
repl "./200nT.out" u ($1==30?$4:1/0):3 pt 5 ps 2 lt 3 ti "Dst=200"
repl "./300nT.out" u ($1==30?$4:1/0):3 pt 5 ps 2 lt 4 ti "Dst=300"
repl "./400nT.out" u ($1==30?$4:1/0):3 pt 5 ps 2 lt 5 ti "Dst=400"
