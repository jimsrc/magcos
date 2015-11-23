#!/usr/bin/env ipython
from pylab import *
import numpy as np
import os

fname_RcVsDst = '%s/1_magnetocosmics/RIGIDECES/IGRF_+_IMF/Rig_vs_Time/dst/marambio/dst_vs_Rc_marambio.dat' % os.environ['HOME']
w_lon, w_lat = np.loadtxt('./w2.dat', unpack=True)

fig = figure(1, figsize=(6, 4))
ax  = fig.add_subplot(111)
ax.set_ylim(-80., 50.)
ax.set_xlim(-110.,70.)

f = []
f += ['../diferentes_dst/AsymDirec_dst000.out']
f += ['../diferentes_dst/AsymDirec_dst100.out']
f += ['../diferentes_dst/AsymDirec_dst200.out']
f += ['../diferentes_dst/AsymDirec_dst300.out']
f += ['../diferentes_dst/AsymDirec_dst400.out']
f = np.array(f)

d13 = np.zeros((f.size,2), dtype=np.float64)
d03 = np.zeros((f.size,2), dtype=np.float64)
for i in range(f.size):
	fname 	 = f[i]
	dd 	 = np.loadtxt(fname, comments='R')
	xx 	 = find(dd[:,0]==13.)[0] #escogemos 1er y unico elemento
	d13[i,:] = dd[xx,(2,3)]
	xx 	 = find(dd[:,0]==3.)[0]	#escogemos 1er y unico elemento
	d03[i,:] = dd[xx,(2,3)]

#sty = ['o', 'D', '^', 'v', 's']
sty = ['o', 'o', 'o', 'o', 'o']
col = ['r', 'b', 'c', 'm', 'orange']
LAB = ['0', '-100', '-200', '-300', '-400']
for i in range(f.size):
	ax.plot(d03[i,1], d03[i,0], marker=sty[i], c=col[i], ms=5.)
	ax.plot(d13[i,1], d13[i,0], marker=sty[i], c=col[i], ms=5., label='%s nT'%LAB[i])
ax.plot(d03[:,1], d03[:,0], '-', c='k', alpha=.7)
ax.plot(d13[:,1], d13[:,0], '-', c='k', alpha=.7)
ax.text(-5., -15., '13GV', fontsize=13.)
ax.text(17., +25., '3GV', fontsize=13.)

ax.plot(w_lon, w_lat, c='gray', lw=2, alpha=.4)
ax.scatter(-56.63, -64.24, marker='*', s=120)
ax.legend(loc='lower right', fontsize=12)
ax.grid()
ax.set_xlabel('geographic longitude [deg]')
ax.set_ylabel('geographic latitude [deg]')

#--------------inset
ax_inset = fig.add_axes([0.22, 0.65, 0.22, 0.22])
dst, rc = np.loadtxt(fname_RcVsDst)[:5,:].T
ax_inset.plot(dst, rc, '-o', c='k')
ax_inset.set_xlabel('Dst [nT]', fontsize=10)
ax_inset.set_ylabel('Rc [GV]', fontsize=10)
ax_inset.grid()
#xticks
XTICKS_INSET = [0,100, 200, 300, 400]
XTICKS_INSET_LAB = []
for i in range(len(XTICKS_INSET)): 
	XTICKS_INSET_LAB += ['%d' % (-XTICKS_INSET[i])]
XTICKS_INSET_LAB = np.array(XTICKS_INSET_LAB)
ax_inset.set_xticks(XTICKS_INSET)
ax_inset.set_xticklabels(XTICKS_INSET_LAB, fontsize=10, rotation='40')
#ytics
YTICKS_INSET = [1.0,1.5,2.0,2.5]
ax_inset.set_yticks(YTICKS_INSET)
ax_inset.set_yticklabels(YTICKS_INSET, fontsize=10)
#limites del plot
ax_inset.set_xlim(-30, 430)
ax_inset.set_ylim(0.8,2.5)

fname_fig = './test2.png'
savefig(fname_fig, dpi=135, bbox_inches='tight')
close()
