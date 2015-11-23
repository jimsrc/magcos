#set title "Direcc. Asintóticas para Malargüe"
unset key
set grid
#unset yzeroaxis
#
set label 1 "*" at -69.3,-35.3 font "Arial,30"
#
set cbrange [0:13]
#
set zrange [0:15]
set xrange [-80:130]
set yrange [-60:60]
set macros
#
set xlabel "Longitud" font "Arial,13"
set ylabel "Latitud" font "Arial,13"
set zlabel "Altura [Re]" font "Arial,13"
set cblabel "Altura [Re]" font "Arial,13"
set zlabel rotate by 90
#
altura = "(sqrt($3*$3+$4*$4+$5*$5)-1)"
#plot 'world.dat' with lines lt 3 ti ""
spl './15GV_dst=0_dat' u 2:1:(@altura) pt 7 ti 'Dst=0nT'
repl './15GV_dst=-200_dat' u 2:1:(@altura) pt 7 ti 'Dst=-200nT'
repl './15GV_dst=-400_dat' u 2:1:(@altura) pt 7 ti 'Dst=-400nT'
#repl './15GV_dat' u 2:1:(@altura) pt 7 ti '15GV'
#repl './50GV_dat' u 2:1:(@altura) pt 7 ti '50GV'
#repl './100GV_dat' u 2:1:(@altura) pt 7 ti '100GV'
#repl './1000GV_dat' u 2:1:(@altura) pt 7 ti '1000GV'
set ticslevel 0
repl 'world.dat' u 1:2:(0) w l lt 3 ti ""
repl './15GV_dst=0_dat' u 2:1:(0):(@altura) pt 6 lt pal noti
repl './15GV_dst=-200_dat' u 2:1:(0):(@altura) pt 6 lt pal noti
repl './15GV_dst=-400_dat' u 2:1:(0):(@altura) pt 6 lt pal noti
#repl './15GV_dat' u 2:1:(0):(@altura) pt 6 lt pal noti
#repl './50GV_dat' u 2:1:(0):(@altura) pt 6 lt pal noti
#repl './100GV_dat' u 2:1:(0):(@altura) pt 6 lt pal noti
#repl './1000GV_dat' u 2:1:(0):(@altura) pt 6 lt pal noti

#repl './AsymDirec_ZEN30_.dat' u 4:3 with linespoints pt 7 lt rgb "red" ti "zen=30º"
set title ""
set key on
set border
#set yzeroaxis
set xtics
set ytics
