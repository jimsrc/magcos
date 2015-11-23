reset
clear
#
set term post enh eps color solid 12
set out "PenumbraVsAños.eps"
#
set bmargin 0
set tmargin 0
set lmargin 4  # 3
set rmargin 4   # 3
set format x""
set xlabel""
# set xrange


set multiplot layout 11, 1 title "PENUMBRA A LO LARGO DEL DIA: 1 ENERO 2010"

set xrange [8.4:10.6]
# 1º FIGURA
#set xrange [0.6:1.4]
set yrange [0:1]
#set ytics 0,1,1 font "San-Serif,10" offset 0,0
unset ytics
pl './penum_00.out' u 1:(1-$2) w boxes fs solid ti '00hrs'

# 2º FIGURA
pl './penum_03.out' u 1:(1-$2) w boxes fs solid ti '03hrs'

# 3º FIGURA
pl './penum_06.out' u 1:(1-$2) w boxes fs solid ti '06hrs'

# 3º FIGURA
pl './penum_09.out' u 1:(1-$2) w boxes fs solid ti '09hrs'

# 3º FIGURA
pl './penum_12.out' u 1:(1-$2) w boxes fs solid ti '12hrs'

# 4º FIGURA
pl './penum_15.out' u 1:(1-$2) w boxes fs solid ti '15hrs'

# 5º FIGURA
pl './penum_18.out' u 1:(1-$2) w boxes fs solid ti '18hrs'

# 6º FIGURA
pl './penum_21.out' u 1:(1-$2) w boxes fs solid ti '21hrs'

# 7º FIGURA
set format x
set xlabel"Rigidez [GV]"
set xtics 8, 0.5, 10.5 font "San-Serif,15" offset 0,0
pl './penum_24.out' u 1:(1-$2) w boxes fs solid ti '24hrs'

unset multiplot
