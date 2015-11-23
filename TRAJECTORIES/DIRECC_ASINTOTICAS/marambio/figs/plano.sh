#set title "Direcc. Asintóticas para Malargüe"
unset key
set grid
unset yzeroaxis
set macros
#

set xtics -70,20,120 font "San-Serif,13" offset 0,0
set ytics font "San-Serif,13" offset 0,0
plot 'world.dat' with lines lt 3 lc 9 ti ""
#
#Hice:
#cat MALARGUE_\ AsymDirec_ZEN15_.dat ROME_AsymDirec_ZEN15.data > malarg_and_rome_asym_zen15.data
################################################################
set xlabel "geographic longitude [deg]" font "San-Serif,13"
set ylabel "geographic latitude [deg]" font "San-Serif,13"
# leyenda
set key right bottom
# rigideces
#set label 1 "10GV" at 73,0 font "Arial,14"
set label 2 "3GV" at 20,+10 font "Arial,14"
set label 3 "13GV" at 0,-15 font "Arial,14"
# malargue position
set label 4 "*" at -56.63, -64.24 font "Arial,20" #Malargue
################################################################
f000="../diferentes_dst/AsymDirec_dst000.out"
f100="../diferentes_dst/AsymDirec_dst100.out"
f200="../diferentes_dst/AsymDirec_dst200.out"
f300="../diferentes_dst/AsymDirec_dst300.out"
f400="../diferentes_dst/AsymDirec_dst400.out"
################################################################
usin0='u ($1==13?$4:1/0):3 pt 5 ps 1'
repl f000 @usin0 lt 1 noti
repl f100 @usin0 lt 2 noti
repl f200 @usin0 lt 3 noti
repl f300 @usin0 lt 4 noti
repl f400 @usin0 lt 5 noti

#usin1='u ($1==8?$4:1/0):3 pt 5 ps 2'
#repl f000 @usin1 lt 1 noti
#repl f100 @usin1 lt 2 noti
#repl f200 @usin1 lt 3 noti
#repl f300 @usin1 lt 4 noti 
#repl f400 @usin1 lt 5 noti

usin2='u ($1==3?$4:1/0):3 pt 7 ps 1'
repl f000 @usin2 lt 1 ti "Dst=0nT"
repl f100 @usin2 lt 2 ti "Dst=-100nT"
repl f200 @usin2 lt 3 ti "Dst=-200nT"
repl f300 @usin2 lt 4 ti "Dst=-300nT"
repl f400 @usin2 lt 5 ti "Dst=-400nT"


set title ""
set key on box
set border
set yzeroaxis
set xtics
set ytics
