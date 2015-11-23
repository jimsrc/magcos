
set grid

set xlabel "Latitude [degrees]"
set ylabel "Rigidity-cutoff Rc [GV]"

set angles degrees

pl './RigLat_2010.out' u 1:4 with linespoints pt 7 ti "IGRF"
repl  14.8*cos(x)*cos(x)*cos(x)*cos(x) lt 3 lw 2 ti "Dipole"
