##
#
set grid
set xlabel "year"
set ylabel "Rc (rigidity cutoff) [GV]"
set xtics rotate by -45
#
pl 'anios_vs_Rc_marambio.dat' u 1:5 w lp pt 7 ti "Rc"
#
##
