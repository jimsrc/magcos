##
#
reset
clear
set bmargin 0
set tmargin 0
set lmargin 4
set rmargin 4
set format x""
set xlabel""
#
set multiplot layout 8, 1 title "TRANSMITTANCE FUNCTION AT BUENOS AIRES" 
set xrange [7.0:12.5]
set yrange [0.0:1.0]
unset ytics
#
pl './penum_DipCent.out' u 1:(1-$2) w boxes fs solid ti  'a)'
pl './penum_DipDesc.out' u 1:(1-$2) w boxes fs solid ti 'b)'
pl './penum_igrf.out' u 1:(1-$2) w boxes fs solid ti 'c)'
set format x
set xlabel"particle rigidity [GV]" font "Arial,13"
set xtics 7, 0.5, 12.5 font "San-Serif,11" offset 0,0
pl './penum_igrf+tsy01.out' u 1:(1-$2) w boxes fs solid ti 'd)'
#
unset multiplot
#
##
