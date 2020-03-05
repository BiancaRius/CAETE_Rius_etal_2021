import pandas as pd 
import matplotlib.pyplot as plt
 

fig,ax =plt.subplots(2,2) #crates a matrix figure type with 2 lines and 2 columns



npls_combination=['50/100','100/200','200/500','500/1000','1000/3000']

hv=[3.068313,3.7264489,1.9756072,3.3781817,2.0345632]

hv_dist=[1.324779,0.5207455,0.6901326,0.7461788,0.4716854] 

hv_intersection=[0.000000,1.0866789,1.6222483,1.5908460,0.9651919]

hv_overlap=[0.0,0.2354475,0.4347396,0.4162449,0.2488580]

ax[0,0].scatter(npls_combination,hv,color='grey',alpha=0.7)
ax[0,0].set(xlabel='PLS number',ylabel='Hypervolume size')
ax[0,1].scatter(npls_combination,hv_dist,color='#107ab0',alpha=0.7)
ax[0,1].set(xlabel='PLS number comparison', ylabel="Centroid's hypervolume \n  distance")
ax[1,0].scatter(npls_combination,hv_intersection,color='g',alpha=0.7)
ax[1,0].set(xlabel='PLS number comparison', ylabel='Hypervolume intersection')
ax[1,1].scatter(npls_combination,hv_overlap, color='#ffa62b',alpha=0.7)
ax[1,1].set(xlabel='PLS number comparison', ylabel='Hypervolume overlap')
plt.subplots_adjust(hspace=0.4)
plt.subplots_adjust(wspace=0.4)
plt.show()
