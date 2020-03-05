import matplotlib.pyplot as plt 
import pandas as pd 
import numpy as np 
import matplotlib.lines as mlines
import matplotlib.transforms as mtransforms

pft5=pd.read_csv("/home/bianca/paper_mestrado_codes_results/caete_results_server/paper_mestrado_Amz_basin/NPP_benchmark/NPP_PFT_points_table.csv")  
pls=pd.read_csv("/home/bianca/paper_mestrado_codes_results/caete_results_server/paper_mestrado_Amz_basin/NPP_benchmark/NPP_PLS_points_table.csv")  
ref_npp=pd.read_csv("/home/bianca/paper_mestrado_codes_results/caete_results_server/paper_mestrado_Amz_basin/NPP_benchmark/NPP_modis_points_table.csv")   
 
fig,ax=plt.subplots()  

ax.plot(ref_npp,pft5,linestyle="",marker="o",markersize=3,c="blue",alpha=0.3,label="PFT (r2=0.05573)")
ax.plot(ref_npp,pls,linestyle="",marker="o",markersize=3,c="green",alpha=0.3,label="PLS (r2=0.06678)")
plt.legend(markerscale=2.5)
line=mlines.Line2D([0,1],[0,1],color="grey")     
transform=ax.transAxes
line.set_transform(transform)
ax.add_line(line)  

plt.xlabel("MODIS")
plt.ylabel("Model approach")

plt.title("NPP")
plt.show()

