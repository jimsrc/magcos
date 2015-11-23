#
# PROGRAMA PARA COMPUTAR PENUMBRAS, DIRECC/POSICIONES ASINTOTICAS, 
# CON DIFERENTES DSTs Y A DIFERENTES HORAS DEL DIA.
# (EN SISTEMA DE COORDENADAS GEO)
#
# idea de input: rigidez de la pla, dst, pdyn, posicion de arribo
#!/bin/bash
echo "DESVIACION VS ALTURA..."
#
##############################################################################
#
max_step_length=0.01
max_trajectory_length=1000.0	# mcmurdo es 10000.0
precision=1e-6			# mcmurdo es 1e-7
G4_max_step=1e-2
#
R_up=1.00
R_paso=-0.01
nro_R_pasos=99
#
Dst_ini=0.0
Dst_fin=-400.0
#
horas=(0 2 4 6 8 10 12 14 16 18 20 22)
indices_horas=(0 1 2 3 4 5 6 7 8 9 10 11 12)
#
# coordenadas de "Belgrano ii"
#
geo_latitude=-77.87
geo_longitude=265.38
#
###############################################################################
#
for Dst in $(seq $Dst_ini -100 $Dst_fin)   
do
	# Lo=${Long_inic[$i]}
	# paso=${pasos[$i]}
	# Lf=${Long_fin[$i]}
	for i in ${indices_horas[*]}   
	do
		echo -e '/tracking/storeTrajectory 0
		/tracking/verbose 0
		/run/verbose 1
		/MAGCOS/USERLIMIT/SetMaxStepLength '$max_step_length' Re
		/MAGCOS/USERLIMIT/SetMaxTrajectoryLength '$max_trajectory_length' Re
		/MAGCOS/INTEGRATION/SetPrecision '$precision' 
		/MAGCOS/INTEGRATION/SetG4MaxStep '$G4_max_step' re
		/MAGCOS/INTEGRATION/SetDeltaIntersection 1e-2 re
		/MAGCOS/BFIELD/SetStartDate 2010 1 1 '${horas[i]}' 0 0
		/MAGCOS/BFIELD/SetGeomagneticFieldModel IGRF
		/MAGCOS/BFIELD/SetExternalFieldModel TSY2001
		/MAGCOS/BFIELD/SetDst '$Dst' nT
		/gps/particle proton
		/MAGCOS/SOURCE/SetPosition GEOID 20. km '$geo_latitude' '$geo_longitude' degree
		/MAGCOS/RIGIDITYVECTOR/Reset
		/MAGCOS/RIGIDITYVECTOR/AddValues '$R_up' '$R_paso' '$nro_R_pasos'
		/MAGCOS/SOURCE/SetDirection GEOID 0. 0. degree
		/tracking/storeTrajectory 1
		/MAGCOS/DRAW/DrawTrajectory true
		/MAGCOS/DRAW/DrawPoints false
		/MAGCOS/DRAW/SetColour 1 0 0
		/MAGCOS/DRAW/SetCoordinateSystem GEO
		/MAGCOS/INTEGRATION/SelectG4IntegrationMethod
		/MAGCOS/USERLIMIT/SetMaxTrajectoryLength '$max_trajectory_length' Re
		/MAGCOS/SCENARIO/ComputeAsymptoticDirections Dst='$Dst'_hr='${horas[i]}'_Rup='$R_up'GV_max_trajec='$max_trajectory_length'Re.out \n exit' | STATIC_MAGNETOCOSMICS

	done
done
#echo 'exit'
#echo 'exit' | STATIC_MAGNETOCOSMICS > Re_$X
