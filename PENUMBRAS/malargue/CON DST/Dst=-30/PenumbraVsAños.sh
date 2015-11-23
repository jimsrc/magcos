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


set multiplot layout 23, 1 title "PENUMBRA EN MALARGUE (Dst=-30nT): 1989 - 2010"

set xrange [8:10.6]

# 1º FIGURA
set yrange [0:1]
unset ytics
pl './penum_TSY96_92.out' u 1:(1-$2) w boxes fs solid ti '1992'

# 3º FIGURA
pl './penum_TSY96_93.out' u 1:(1-$2) w boxes fs solid ti '1993'

# 3º FIGURA
pl './penum_TSY96_94.out' u 1:(1-$2) w boxes fs solid ti '1994'

# 4º FIGURA
pl './penum_TSY96_95.out' u 1:(1-$2) w boxes fs solid ti '1995'

# 5º FIGURA
pl './penum_TSY96_96.out' u 1:(1-$2) w boxes fs solid ti '1996'

# 6º FIGURA
pl './penum_TSY96_97.out' u 1:(1-$2) w boxes fs solid ti '1997'

# 7º FIGURA
pl './penum_TSY96_98.out' u 1:(1-$2) w boxes fs solid ti '1998'

# 8º FIGURA
#set ylabel "Penumbra function" font "San-Serif,11" offset 2,0
pl './penum_TSY96_99.out' u 1:(1-$2) w boxes fs solid ti '1999'
#unset ylabel

# 9º FIGURA
pl './penum_TSY2001_00.out' u 1:(1-$2) w boxes fs solid ti '2000'

# 10º FIGURA
pl './penum_TSY2001_01.out' u 1:(1-$2) w boxes fs solid ti '2001'

# 11º FIGURA
pl './penum_TSY2001_02.out' u 1:(1-$2) w boxes fs solid ti '2002'

# 12º FIGURA
pl './penum_TSY2001_03.out' u 1:(1-$2) w boxes fs solid ti '2003'

# 13º FIGURA
pl './penum_TSY2001_04.out' u 1:(1-$2) w boxes fs solid ti '2004'

# 14º FIGURA
pl './penum_TSY2001_05.out' u 1:(1-$2) w boxes fs solid ti '2005'

# 15º FIGURA
pl './penum_TSY2001_06.out' u 1:(1-$2) w boxes fs solid ti '2006'

# 16º FIGURA
pl './penum_TSY2001_07.out' u 1:(1-$2) w boxes fs solid ti '2007'

# 17º FIGURA
pl './penum_TSY2001_08.out' u 1:(1-$2) w boxes fs solid ti '2008'

# 18º FIGURA
pl './penum_TSY2001_09.out' u 1:(1-$2) w boxes fs solid ti '2009'

# 19º FIGURA
#
set format x
set xlabel"Rigidez [GV]"
set xtics 8, 0.5, 10.5 font "San-Serif,15" offset 0,0
pl './penum_TSY2001_10.out' u 1:(1-$2) w boxes fs solid ti '2010'

unset multiplot
