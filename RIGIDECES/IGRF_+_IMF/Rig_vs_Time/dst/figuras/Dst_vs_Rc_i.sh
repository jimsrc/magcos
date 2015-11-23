reset; clear
set grid
set key box
set key left bottom

set xlabel "-Dst [nT]"
set ylabel "Rc [GV]"
set y2label "Rc [GV]"
set y2tics
set ytics nomirror

FILE_BRCHE='../bariloche/dst_vs_Rc_bariloche.dat'
FILE_BSAS='../bsas/dst_vs_Rc_bsas.dat'
FILE_MARAM='../marambio/dst_vs_Rc_marambio.dat'
set arrow from 170, 7.85 to 100, 7.85 lc 1
set arrow from 270, 7.91 to 350, 7.91 lc 3
set arrow from 230, 8.15 to 170, 8.15 lc 7

set xrange [0:400]

pl FILE_BRCHE u 1:2 w lp pt 4 ti "Bariloche"
repl FILE_BSAS u 1:2 w lp lt 7 ti "Buenos Aires"
repl FILE_MARAM u 1:2 w lp axis x1y2 ti "Marambio"
