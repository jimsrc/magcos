#
# input:
# $1 = file
#
# output: 
# col1 = rigidez
# col2 = corrimiento (longitud geografica) en horas, desde malargue
#
echo "#" > $1_hrs
echo "# Dst = "$1 >> $1_hrs
echo "#" >> $1_hrs
echo "# col1 = rigidez" >> $1_hrs
echo "# col2 = corrimiento (longitud geografica) en horas, desde malargue" >> $1_hrs
echo "#" >> $1_hrs
cat ./$1 | awk '{if($4!="Lat." && $4!=0)print $1,($4+69.3)*12/180}' >> $1_hrs
