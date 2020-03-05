import pandas as pd 
import matplotlib.pyplot as plt
import math
import numpy as np
import matplotlib.axes
 




npls=['50','100','200','500','1000','3000']

aleaf_rich=[0.019,0.025,0.028,0.025,0.025,0.026]

aleaf_eve=[0.699,0.665,0.731,0.74,0.804,0.759]

aleaf_div=[0.455,0.383,0.462,0.474,0.551,0.518]

aroot_rich=[0.042,0.036,0.035,0.039,0.033,0.038]

aroot_eve=[0.744,0.795,0.704,0.73,0.725,0.679]

aroot_div=[0.607,0.561,0.508,0.477,0.535,0.574]

awood_rich=[0.039,0.035,0.026,0.032,0.023,0.025]

awood_eve=[0.793,0.794,0.667,0.663,0.625,0.607]

awood_div=[0.547,0.536,0.497,0.502,0.504,0.489]

tleaf_rich=[0.509,0.555,0.45,0.526,0.532,0.538]

tleaf_eve=[0.771,0.766,0.739,0.711,0.725,0.712]

tleaf_div=[0.65,0.712,0.65,0.539,0.671,0.657]

troot_rich=[0.584,0.668,0.668,0.81,0.676,0.726]

troot_eve=[0.786,0.791,0.77,0.747,0.745,0.723]

troot_div=[0.55,0.601,0.579,0.516,0.608,0.591]

twood_rich=[2.358,1.52,1.415,1.467,1.363,2.306]

twood_eve=[0.743,0.59,0.747,0.697,0.582,0.38]

twood_div=[0.483,0.515,0.459,0.573,0.731,0.893]


fig,ax=plt.subplots(3,2,sharex=True)
#ax1=fig.add_subplot(npls,aleaf_rich,color='limegreen')
#ax[0,0].plot(npls,aroot_rich,color='darkorange')
#ax[0,0].plot(npls,awood_rich,color='saddlebrown')
#ax[0,1].plot(npls,tleaf_rich,color='limegreen')
#ax[0,1].plot(npls,troot_rich,color='darkorange')


ax[0,0].plot(npls,aleaf_rich,color='limegreen',label='leaf')
ax[0,0].plot(npls,awood_rich,color='saddlebrown',label='wood')
ax[0,0].plot(npls,aroot_rich,color='darkorange',label='root')    
ax[0,0].set(ylabel='Richness')
ax[0,0].legend(bbox_to_anchor=(1.05,1),loc='upper left', borderaxespad=0.)

ax[0,1].plot(npls,tleaf_rich,color='limegreen',linestyle='--',label='leaf')
ax[0,1].plot(npls,troot_rich,color='darkorange',linestyle='--',label='root')
ax[0,1].set(ylabel='Richness')
ax[0,1].legend(bbox_to_anchor=(1.05,1),loc='upper left', borderaxespad=0.)
ax[0,1]=ax[0,1].twinx()
ax[0,1].plot(npls,twood_rich,color='saddlebrown',linestyle='--',label='wood')
ax[0,1].set(ylabel='Wood richness')
ax[0,1].legend(bbox_to_anchor=(1.05,0.7),loc='upper left', borderaxespad=0.)

ax[1,0].plot(npls,aleaf_eve,color='limegreen')
ax[1,0].plot(npls,aroot_eve,color='darkorange')
ax[1,0].plot(npls,awood_eve,color='saddlebrown')
ax[1,0].set(ylabel='Evenness')

ax[1,1].plot(npls,tleaf_eve,color='limegreen',linestyle='--')
ax[1,1].plot(npls,troot_eve,color='darkorange',linestyle='--')
ax[1,1].plot(npls,twood_eve,color='saddlebrown',linestyle='--')
ax[1,1].set(ylabel='Evenness')

ax[2,0].plot(npls,aleaf_div,color='limegreen')
ax[2,0].plot(npls,awood_div,color='saddlebrown')
ax[2,0].set(ylabel='Divergence')
ax[2,0]=ax[2,0].twinx()
ax[2,0].plot(npls,aroot_div,color='darkorange')
ax[2,0].set(ylabel='Root divergence')

ax[2,1].plot(npls,tleaf_div,color='limegreen',linestyle='--')
ax[2,1].plot(npls,troot_div,color='darkorange',linestyle='--')
ax[2,1].plot(npls,twood_div,color='saddlebrown',linestyle='--')
ax[2,1].set(ylabel='Divergence')

plt.subplots_adjust(hspace=0.4)
plt.subplots_adjust(wspace=0.4)
fig.text(0.5,0.03,'PLS number', ha='center')
plt.show()
