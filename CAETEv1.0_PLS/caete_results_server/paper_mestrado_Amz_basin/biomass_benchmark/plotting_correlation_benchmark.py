import matplotlib.pyplot as plt 
import pandas as pd 
import numpy as np 
import matplotlib.lines as mlines
import matplotlib.transforms as mtransforms

pft5=pd.read_csv("/home/bianca/paper_mestrado_codes_results/caete_results_server/paper_mestrado_Amz_basin/biomass_benchmark/5PFTs_table_points.csv")  
pls=pd.read_csv("/home/bianca/paper_mestrado_codes_results/caete_results_server/paper_mestrado_Amz_basin/biomass_benchmark/3000PLS_table_points.csv")  
ref_bac=pd.read_csv("/home/bianca/paper_mestrado_codes_results/caete_results_server/paper_mestrado_Amz_basin/biomass_benchmark/baccini_table_points.csv")   
ref_saat=pd.read_csv("/home/bianca/paper_mestrado_codes_results/caete_results_server/paper_mestrado_Amz_basin/biomass_benchmark/saatchi_table_points.csv")   
fig,ax=plt.subplots()  

ax.plot(ref_bac,pft5,linestyle="",marker="o",markersize=3,c="blue",alpha=0.3,label="PFT approach")
ax.plot(ref_bac,pls,linestyle="",marker="o",markersize=3,c="green",alpha=0.3,label="PLS approach")
line=mlines.Line2D([0,1],[0,1],color="grey")     
transform=ax.transAxes
line.set_transform(transform)
ax.add_line(line)  
plt.legend(markerscale=2.5)
plt.xlabel("Baccini et al. (2012)")
plt.ylabel("Model approach")
plt.show()

fig,ax=plt.subplots()  
ax.plot(ref_saat,pft5,linestyle="",marker="o",markersize=3,c="blue",alpha=0.3,label="PFT approach")
ax.plot(ref_saat,pls,linestyle="",marker="o",markersize=3,c="green",alpha=0.3,label="PLS approach")
line=mlines.Line2D([0,1],[0,1],color="grey")     
transform=ax.transAxes
line.set_transform(transform)
ax.add_line(line)  
plt.legend(markerscale=2.5)
plt.xlabel("Saatchi et al. (2011)")
plt.ylabel("Model approach")
plt.show()
