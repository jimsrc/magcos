##
#
set grid
set xtics rotate by -45
set key left bottom
#
set xlabel "years" font "arial, 14"
set ylabel "Rc at Bs.As. [GV]" font "arial, 14"
set y2label "Rc at Marambio [GV]" font "arial, 14"
#
set xtics font "arial, 13"
set y2tics 2.2, 0.05, 2.6 font "arial, 13"
set ytics 8.3, 0.1, 9.4 font "arial, 13" nomirror
#
pl '../../bsas/penumbras_vs_anios/anios_vs_Rc_bsas.dat' u 1:5 pt 16 lt 1 ti "Bs.As."
repl 'anios_vs_Rc_marambio.dat' u 1:5 pt 6 lt 3 axis x1y2 ti "Marambio" 
#
##
