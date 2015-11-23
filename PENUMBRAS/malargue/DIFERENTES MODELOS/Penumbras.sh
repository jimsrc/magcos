reset
clear
#
#set term post enh eps color solid 12
#set out "Penumbras.eps"
#
set bmargin 0
set tmargin 0
set lmargin 4  # 3
set rmargin 4   # 3
set format x""
set xlabel""
# set xrange


set multiplot layout 8, 1 title "PENUMBRA EN MALARGUE: Dipolo Centrado/Dipolo Des-centrado/IGRF/IGRF+TSY01" font "Arial,13"

set xrange [8:12]
#PRIMERA FIGURA
#set xrange [0.6:1.4]
set yrange [0:1]
#set ytics 0,1,1 font "San-Serif,10" offset 0,0
unset ytics
pl './penum_DipCent.out' u 1:(1-$2) w boxes fs solid ti  'a)'

# 2º FIGURA
pl './penum_DipDesc.out' u 1:(1-$2) w boxes fs solid ti 'b)'

# 3º FIGURA
pl './penum_igrf.out' u 1:(1-$2) w boxes fs solid ti 'c)'

# 4º FIGURA
#
set format x
set xlabel"Rigidez de la partícula [GV]" font "Arial,13"
set xtics 8, 0.5, 11.5 font "San-Serif,11" offset 0,0
pl './penum_igrf+tsy01.out' u 1:(1-$2) w boxes fs solid ti 'd)'

unset multiplot
