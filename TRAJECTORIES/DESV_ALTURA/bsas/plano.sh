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
set xrange [-100:150]
set yrange [-80:80]
set macros
#
set xlabel "Longitude [º]" font "Arial, 13"
set ylabel "Latitude [º]" font "Arial, 13"
set zlabel "Height [Re]" font "Arial, 13"
set cblabel "Height [Re]" offset -0.3,0.5
set ylabel rotate by 70
set zlabel rotate by 90
#
altura = "(sqrt($3*$3+$4*$4+$5*$5)-1)"
#plot 'world.dat' with lines lt 3 ti ""
spl './10GV_dat' u 2:1:(@altura) pt 7 ti '10GV'
repl './15GV_dat' u 2:1:(@altura) pt 7 ti '15GV'
repl './30GV_dat' u 2:1:(@altura) pt 7 ti '50GV'
repl './100GV_dat' u 2:1:(@altura) pt 7 ti '100GV'
set ticslevel 0
repl 'world.dat' u 1:2:(0) w l lt 3 ti ""
repl './10GV_dat' u 2:1:(0):(@altura) pt 6 lt pal noti
repl './15GV_dat' u 2:1:(0):(@altura) pt 6 lt pal noti
repl './30GV_dat' u 2:1:(0):(@altura) pt 6 lt pal noti
repl './100GV_dat' u 2:1:(0):(@altura) pt 6 lt pal noti

#repl './AsymDirec_ZEN30_.dat' u 4:3 with linespoints pt 7 lt rgb "red" ti "zen=30º"
set title ""
set key on
set key left top
set border
#set yzeroaxis
set xtics
set ytics
