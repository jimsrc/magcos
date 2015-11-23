##
#
set grid
set key right top box
set key samplen 1 spacing 5 width 2 height .5

set xlabel "-Dst [nT]"
set ylabel "Rc at Bs. As. [GV]"
set y2label "Rc at Marambio [GV]"
#
set ytics 7.9, 0.1, 8.4
set y2tics 0.6, 0.4, 2.4
set ytics nomirror
#
pl 'dst_vs_Rc_bsas.dat' u 1:2 ps 2 pt 3 lt -1 ti "Bs. As.\n 0.1%/nT"
repl '../marambio/dst_vs_Rc_marambio.dat' u 1:2 ps 2 pt 6 lt -1 axis x1y2 ti "Marambio\n 0.3%/nT"
#
##
