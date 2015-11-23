#!/bin/bash
cat AsymDirec_ZEN15_AZIM00.out AsymDirec_ZEN15_AZIM45.out AsymDirec_ZEN15_AZIM90.out AsymDirec_ZEN15_AZIM135.out AsymDirec_ZEN15_AZIM180.out AsymDirec_ZEN15_AZIM225.out AsymDirec_ZEN15_AZIM270.out AsymDirec_ZEN15_AZIM315.out AsymDirec_ZEN15_AZIM00.out > one

# LUEGO BORRAMOS LA LINEAS DE TEXTO:
cat one | awk '{if($1!="Rigidity" && $1!="Rl") print $1,$2,$3,$4}' > _one

# SELECCIONAMOS:
for N in $(seq 10 -1 1)
do
	cat _one | awk '{if($1=='$N'.0) {print $1,$2,$3,$4}}' > a$N
done

#cat a100 a90 a80 a70 a60 a50 a40 a30 a20 a10 > AsymDirec_ZEN15.data

#- recordar dejar dos espacios para q los "poligonos" no se mezclen

#- "AsymDirec_ZEN15_.dat" es la version corta de "AsymDirec_ZEN15.dat"
