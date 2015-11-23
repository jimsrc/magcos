set grid
set xlabel "Local time (GMT-3) [horas]" font "San-Serif,12"
set ylabel "Vertical cutoff rigidity [GV]" font "San-Serif,12"
set xtics 0,5,20 font "San-Serif,12" offset 0,0
set ytics 8.6,0.2,9.4 font "San-Serif,12" offset 0,0
set key left bottom
pl [0:24] [8.5:9.52] './local_dst0.dat' u ($1/3600):3 with linespoints pt 1 ti "        Dst=0nT"
repl './local_dst30.dat' u ($1/3600):3 w lp pt 2 ti "Dst=-30nT"
repl './local_dst100.dat' u ($1/3600):3 w lp pt 3 ti "Dst=-100nT"
repl './local_dst200.dat' u ($1/3600):3 w lp pt 4 ti "Dst=-200nT"
repl './local_dst300.dat' u ($1/3600):3 w lp pt 5 ti "Dst=-300nT"
repl './local_dst600.dat' u ($1<0?$1/3600:1/0):3 w lp pt 6 ti ""
repl './local_dst600.dat' u ($1/3600):3 with linespoints pt 7 ti "Dst=-600nT"
