import matplotlib.pyplot as plt 
import pandas as pd 
import numpy as np 
import matplotlib.lines as mlines
import matplotlib.transforms as mtransforms

pft_agb=pd.read_csv("/home/bianca/paper_mestrado_codes_results/CAETEv1.0_PLS/caete_results_server/paper_mestrado_Amz_basin/biomass_benchmark/points_plots_agb_PFT.csv")
pft_tb=pd.read_csv("/home/bianca/paper_mestrado_codes_results/CAETEv1.0_PLS/caete_results_server/paper_mestrado_Amz_basin/biomass_benchmark/points_plots_tb_PFT.csv")    
pls_agb=pd.read_csv("/home/bianca/paper_mestrado_codes_results/CAETEv1.0_PLS/caete_results_server/paper_mestrado_Amz_basin/biomass_benchmark/points_plots_agb_PLS.csv")
pls_tb=pd.read_csv("/home/bianca/paper_mestrado_codes_results/CAETEv1.0_PLS/caete_results_server/paper_mestrado_Amz_basin/biomass_benchmark/points_plots_tb_PLS.csv")  
ref_agb=pd.read_csv("/home/bianca/paper_mestrado_codes_results/CAETEv1.0_PLS/caete_results_server/paper_mestrado_Amz_basin/biomass_benchmark/reference_plot_agb.csv")
ref_tb=pd.read_csv("/home/bianca/paper_mestrado_codes_results/CAETEv1.0_PLS/caete_results_server/paper_mestrado_Amz_basin/biomass_benchmark/reference_plot_tb.csv")      
y=pd.read_csv("/home/bianca/paper_mestrado_codes_results/CAETEv1.0_PLS/caete_results_server/paper_mestrado_Amz_basin/biomass_benchmark/eixo_y.csv")  
x=pd.read_csv("/home/bianca/paper_mestrado_codes_results/CAETEv1.0_PLS/caete_results_server/paper_mestrado_Amz_basin/biomass_benchmark/eixo_x.csv") 

fig,ax=plt.subplots()
ax.plot(x,y,linestyle="",marker="") 
  
ax.plot(ref_tb,pft_tb,linestyle="",marker="x",markersize=6,c="blue",alpha=0.7,label="TC PFT r2=-0.03415 p=0.7857")
ax.plot(ref_agb,pft_agb,linestyle="",marker="o",markersize=6,c="blue",alpha=0.5,label="AGC PFT r2=-0.02569 p=0.7277")
ax.plot(ref_tb,pls_tb,linestyle="",marker="x",markersize=6,c="green",alpha=0.7,label="TC trait-based r2=-0.02392 p=0.5613")
ax.plot(ref_agb,pls_agb,linestyle="",marker="o",markersize=6,c="green",alpha=0.5,label="AGC trait-based r2=-0.0176 p=0.534")



plt.legend(markerscale=1.5)
line=mlines.Line2D([0,1],[0,1],color="grey")     
transform=ax.transAxes
line.set_transform(transform)
ax.add_line(line)  

plt.xlabel("Reference plots",fontname="Arial")
plt.ylabel("Model approach",fontname="Arial")

plt.title("Carbon content (kgC/m2)", fontname="Arial")
plt.show()

