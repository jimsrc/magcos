#!/bin/bash
cat AsymDirec_ZEN15_AZIM00.out AsymDirec_ZEN15_AZIM45.out AsymDirec_ZEN15_AZIM90.out AsymDirec_ZEN15_AZIM135.out AsymDirec_ZEN15_AZIM180.out AsymDirec_ZEN15_AZIM225.out AsymDirec_ZEN15_AZIM270.out AsymDirec_ZEN15_AZIM315.out AsymDirec_ZEN15_AZIM00.out > one

cat one | awk '{if($1!="Rigidity" && $1!="Rl") print $1,$2,$3,$4}' > _one

for N in $(seq 20 -5 2)
do
	cat _one | awk '{if($1=='$N'.0) {print $1,$2,$3,$4}}' > a"$N"
done

cat a20 a15 > AsymDirec_ZEN15.data

# deja dos espacios verticales para hacer poligonos en gnuplot:
cat AsymDirec_ZEN15.data | awk '{Ri=$1; if(Rf!=Ri && NR!=1){print "\n"}; print $1,$2,$3,$4; Rf=$1}' > _AsymDirec_ZEN15.data
