import matplotlib.pyplot as plt 
import pandas as pd 
import numpy as np 
import matplotlib.lines as mlines
import matplotlib.transforms as mtransforms

pft5=pd.read_csv("/home/bianca/paper_mestrado_codes_results/caete_results_server/paper_mestrado_Amz_basin/GPP_benchmark/points_plots_gpp_PFT.csv")  
pls=pd.read_csv("/home/bianca/paper_mestrado_codes_results/caete_results_server/paper_mestrado_Amz_basin/GPP_benchmark/points_plots_gpp_PLS.csv")  
ref_npp=pd.read_csv("/home/bianca/paper_mestrado_codes_results/caete_results_server/paper_mestrado_Amz_basin/GPP_benchmark/plots_GPP_reference.csv")
y=pd.read_csv("/home/bianca/paper_mestrado_codes_results/caete_results_server/paper_mestrado_Amz_basin/GPP_benchmark/eixo_y.csv")  
x=pd.read_csv("/home/bianca/paper_mestrado_codes_results/caete_results_server/paper_mestrado_Amz_basin/GPP_benchmark/eixo_x.csv") 

  
 
fig,ax=plt.subplots()  
ax.plot(x,y,linestyle="",marker="") 
ax.plot(ref_npp,pft5,linestyle="",marker="o",markersize=6,c="blue",alpha=0.4,label="PFT r2=0.08077  p=0.2964")
ax.plot(ref_npp,pls,linestyle="",marker="o",markersize=6,c="green",alpha=0.4,label="PLS r2=0.2152  p=0.1985")
plt.legend(markerscale=1.5)
line=mlines.Line2D([0,1],[0,1],color="grey")     
transform=ax.transAxes
line.set_transform(transform)
ax.add_line(line)  

plt.xlabel("Reference Plots")
plt.ylabel("Model approach")

plt.title("GPP")
plt.show()

