reset; clear
set grid
set key box
set key left bottom

set xlabel "-Dst [nT]"
set ylabel "Rc [GV]"

FILE_BRCHE='../bariloche/dst_vs_Rc_bariloche.dat'
FILE_BSAS='../bsas/dst_vs_Rc_bsas.dat'
FILE_MARAM='../marambio/dst_vs_Rc_marambio.dat'

set xrange [0:400]

pl FILE_BRCHE u 1:2 w lp pt 4 ti "Bariloche"
repl FILE_BSAS u 1:2 w lp ti "Buenos Aires"
repl FILE_MARAM u 1:($2+6) w lp ti "Marambio (+6GV)"
