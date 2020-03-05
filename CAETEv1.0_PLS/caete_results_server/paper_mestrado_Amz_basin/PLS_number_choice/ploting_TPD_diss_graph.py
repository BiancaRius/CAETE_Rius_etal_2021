
import matplotlib.pyplot as plt

npls_combination=['50/100','100/200','200/500','500/1000','1000/3000']

aleaf_dis=[0.1186149,0.2558387,0.1051230,0.2777126,0.1327579]
awood_dis=[0.2351830,0.3420692,0.1001587,0.1948371,0.1066072]
aroot_dis=[0.2244479,0.1791040,0.1143181,0.1561390,0.05936322]

tleaf_dis=[0.2987946,0.3158217,0.2583913,0.4235345,0.3256115]
twood_dis=[1.0000000,0.7700436,0.2853897,0.2229523,0.8973038]
troot_dis=[0.3033842,0.05217546,0.09801411,0.12461501,0.06437437]

fig,(ax1,ax2) =plt.subplots(1,2)
ax1.plot(npls_combination,aleaf_dis,color='limegreen',label='leaf')
ax1.plot(npls_combination,awood_dis,color='saddlebrown',label='wood')
ax1.plot(npls_combination,aroot_dis,color='darkorange',label='root')
ax1.legend()
ax1.set(ylabel='TPD dissimilarity')

ax2.plot(npls_combination,tleaf_dis,color='limegreen',linestyle='--',label='leaf')
ax2.plot(npls_combination,twood_dis,color='saddlebrown',linestyle='--',label='wood')
ax2.plot(npls_combination,troot_dis,color='darkorange',linestyle='--',label='root')
plt.legend()

fig.text(0.5,0.03,'PLS number comparison', ha='center')
plt.show()
