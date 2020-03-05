import pandas as pd 
import matplotlib.pyplot as plt
import seaborn as sns

table=pd.read_csv('/home/bianca/paper_mestrado_codes_results/caete_results_server/paper_mestrado_Amz_basin/PLS_number_choice/all_pls_all_runs.csv')
	
pls=table.PLS

NPP=table.npp
GPP=table.gpp
Arespiration=table.ra
Biomass=table.cmass

aleaf=table.aleaf_cwm
awood=table.awood_cwm
aroot=table.aroot_cwm

tleaf=table.tleaf_cwm
twood=table.twood_cwm
troot=table.troot_cwm

fig,ax=plt.subplots(2,2)


sns.boxplot(x=pls,y=NPP,color='grey',showfliers=False,ax=ax[0,0])
ax[0,0].set(xlabel= 'PLS number',ylabel='NPP')
sns.boxplot(x=pls,y=GPP,color='grey',showfliers=False,ax=ax[1,0])
ax[1,0].set(xlabel='PLS number', ylabel="GPP")
sns.boxplot(x=pls,y=Biomass,color='grey',showfliers=False,ax=ax[0,1])
ax[0,1].set(xlabel= 'PLS number',ylabel='Biomass')
sns.boxplot(x=pls,y=Arespiration,color='grey',showfliers=False,ax=ax[1,1])
ax[1,1].set(xlabel='PLS number', ylabel="A. respiration")

fig,ax=plt.subplots(3,2,sharex=True)
sns.boxplot(x=pls,y=aleaf,color='limegreen',showfliers=False,ax=ax[0,0])
ax[0,0].set(xlabel=' ',ylabel='Leaf')
sns.boxplot(x=pls,y=awood,color='saddlebrown',showfliers=False,ax=ax[1,0])
ax[1,0].set(xlabel=' ', ylabel="Wood")
sns.boxplot(x=pls,y=aroot,color='darkorange',showfliers=False,ax=ax[2,0])
ax[2,0].set(xlabel='PLS number', ylabel="Root")
sns.boxplot(x=pls,y=tleaf,color='limegreen',showfliers=False,ax=ax[0,1])
ax[0,1].set(xlabel=' ',ylabel='Leaf')
sns.boxplot(x=pls,y=twood,color='saddlebrown',showfliers=False,ax=ax[1,1])
ax[1,1].set(xlabel=' ', ylabel="Wood")
sns.boxplot(x=pls,y=troot,color='darkorange',showfliers=False,ax=ax[2,1])
ax[2,1].set(xlabel='PLS number', ylabel="Root")

plt.show()
