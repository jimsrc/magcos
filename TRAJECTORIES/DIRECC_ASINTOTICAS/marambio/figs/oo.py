from pylab import *
import numpy as np
import os

#-------- mapa mundi
fname_RcVsDst = '%s/1_magnetocosmics/RIGIDECES/IGRF_+_IMF/Rig_vs_Time/dst/marambio/dst_vs_Rc_marambio.dat' % os.environ['HOME']
w_lon, w_lat = np.loadtxt('./w2.dat', unpack=True)
#-------------------
fname_fig = './asintot_marambio_igrf2010'
fname_inp = '../Dst=0/zen15/AsymDirec_ZEN15_.dat'
data    = np.loadtxt(fname_inp)

n = 9 # nro de direcc asintoticas por energia
cols = (2,3)
tr = []
for i in range(data.shape[0]/n):
    ini = i*n
    fin = (i+1)*n
    tr += [ data[ini:fin,cols]  ]

tr = np.array(tr)
label = ['100GV', '50GV', '20GV', '10GV', '4.6GV', '3.1GV']

#---------------- figura
fig = figure(1, figsize=(6,4))
ax  = fig.add_subplot(111)

ax.set_ylim(-80., 50.)
ax.set_xlim(-110.,70.)
ax.plot(w_lon, w_lat, c='gray', lw=2, alpha=.4)
ax.scatter(-56.63, -64.24, marker='*', s=120)
ax.grid()
ax.set_xlabel('geographic longitude [deg]')
ax.set_ylabel('geographic latitude [deg]')

for i in range(tr.shape[0]):
    ax.plot(tr[i][:,1], tr[i][:,0], '-o', ms=4., label=label[i])

ax.legend(loc='upper left')

savefig('%s.png'%fname_fig, format='png', dpi=135, bbox_inches='tight')
close()
