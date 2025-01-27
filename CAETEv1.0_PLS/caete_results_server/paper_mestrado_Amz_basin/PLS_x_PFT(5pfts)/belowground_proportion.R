library(rgdal)
library(raster)

PLS_lowprec=read.csv("/home/bianca/paper_mestrado_codes_results/CAETEv1.0_PLS/caete_results_server/paper_mestrado_Amz_basin/3000PLS_application/3000_meanruns_lowprec.csv")
PLS_root_lowprec=PLS_lowprec$cfroot
PLS_mean_root_lowprec=mean(PLS_root_lowprec)
PLS_shoot_lowprec=PLS_lowprec$cleaf+PLS_lowprec$cawood
PLS_mean_shoot_lowprec=mean(PLS_shoot_lowprec)
root_shoot_PLS_lowprec=PLS_mean_root_lowprec/PLS_mean_shoot_lowprec

PLS_nclim=read.csv("/home/bianca/paper_mestrado_codes_results/CAETEv1.0_PLS/caete_results_server/paper_mestrado_Amz_basin/3000PLS/3000_meanruns_nclim.csv")
PLS_root_nclim=PLS_nclim$cfroot
PLS_mean_root_nclim=mean(PLS_root_nclim)
PLS_shoot_nclim=PLS_nclim$cleaf+PLS_nclim$cawood
PLS_mean_shoot_nclim=mean(PLS_shoot_nclim)
root_shoot_PLS_nclim=PLS_mean_root_nclim/PLS_mean_shoot_nclim

PFT_lowprec=read.csv("/home/bianca/paper_mestrado_codes_results/CAETEv1.0_PLS/caete_results_server/paper_mestrado_Amz_basin/5PFTs_application/5PFTs_meanruns_nclim_lowprec.csv")
PFT_lowprec=PFT_lowprec[PFT_lowprec$clima=="lowprec",]
PFT_root_lowprec=PFT_lowprec$cfroot
PFT_mean_root_lowprec=mean(PFT_root_lowprec)
PFT_shoot_lowprec=PFT_lowprec$cleaf+PFT_lowprec$cawood
PFT_mean_shoot_lowprec=mean(PFT_shoot_lowprec)
root_shoot_PFT_lowprec=PFT_mean_root_lowprec/PFT_mean_shoot_lowprec

PFT_nclim=read.csv("/home/bianca/paper_mestrado_codes_results/CAETEv1.0_PLS/caete_results_server/paper_mestrado_Amz_basin/5PFTs_application/5PFTs_meanruns_nclim_lowprec.csv")
PFT_nclim=PFT_nclim[PFT_nclim$clima=="nclim",]
PFT_root_nclim=PFT_nclim$cfroot
PFT_mean_root_nclim=mean(PFT_root_nclim)
PFT_shoot_nclim=PFT_nclim$cleaf+PFT_nclim$cawood
PFT_mean_shoot_nclim=mean(PFT_shoot_nclim)
root_shoot_PFT_nclim=PFT_mean_root_nclim/PFT_mean_shoot_nclim

perc_change_PFT=(root_shoot_PFT_lowprec)-(root_shoot_PFT_nclim)
perc_change_PFT=perc_change_PFT/(root_shoot_PFT_nclim)
perc_change_PFT*100

perc_change_PLS=(root_shoot_PLS_lowprec)-(root_shoot_PLS_nclim)
perc_change_PLS=perc_change_PLS/(root_shoot_PLS_nclim)
perc_change_PLS*100


agb_PLS_nclim=raster("/home/bianca/paper_mestrado_codes_results/caete_results_server/paper_mestrado_Amz_basin/3000PLS/aboveground_biomass_3000PLS.tif")

bg_PLS_nclim=raster("/home/bianca/paper_mestrado_codes_results/caete_results_server/paper_mestrado_Amz_basin/3000PLS/total_cfroot_PLS_nclim_clipped.tif")

agb_PLS_lowprec=raster("/home/bianca/paper_mestrado_codes_results/caete_results_server/paper_mestrado_Amz_basin/3000PLS_application/3000_lowprec/aboveground_biomass_PLS_lowprec.tif")

bg_PLS_lowprec=raster("/home/bianca/paper_mestrado_codes_results/caete_results_server/paper_mestrado_Amz_basin/3000PLS_application/3000_lowprec/total_cfroot_PLS_lowprec_clipped.tif")

agb_PFT_nclim=raster("/home/bianca/paper_mestrado_codes_results/caete_results_server/paper_mestrado_Amz_basin/5PFTs/aboveground_biomass_5PFTs_nclim.tif")

bg_PFT_nclim=raster("/home/bianca/paper_mestrado_codes_results/caete_results_server/paper_mestrado_Amz_basin/5PFTs/total_cfroot_5PFTs_nclim.tif")

agb_PFT_lowprec=raster("/home/bianca/paper_mestrado_codes_results/caete_results_server/paper_mestrado_Amz_basin/5PFTs_application/aboveground_biomass_5PFTs_lowprec.tif")

bg_PFT_lowprec=raster("/home/bianca/paper_mestrado_codes_results/caete_results_server/paper_mestrado_Amz_basin/5PFTs_application/total_cfroot_5PFTs_lowprec.tif")

total_agb_PLS_nclim=cellStats(agb_PLS_nclim,stat="sum")
total_bg_PLS_nclim=(cellStats(bg_PLS_nclim,stat="sum"))
total_biomass_PLS_nclim=total_agb_PLS_nclim+total_bg_PLS_nclim

total_agb_PLS_lowprec=cellStats(agb_PLS_lowprec,stat="sum")
total_bg_PLS_lowprec=cellStats(bg_PLS_lowprec,stat="sum")
total_biomass_PLS_lowprec=total_agb_PLS_lowprec+total_bg_PLS_lowprec

total_bg_PLS_lowprec/total_agb_PLS_lowprec
total_bg_PLS_nclim/total_agb_PLS_nclim

total_agb_PFT_nclim=cellStats(agb_PFT_nclim,stat="sum")
total_bg_PFT_nclim=(cellStats(bg_PFT_nclim,stat="sum"))
total_biomass_PFT_nclim=total_agb_PFT_nclim+total_bg_PFT_nclim

total_agb_PFT_lowprec=cellStats(agb_PFT_lowprec,stat="sum")
total_bg_PFT_lowprec=cellStats(bg_PFT_lowprec,stat="sum")
total_biomass_PFT_lowprec=total_agb_PFT_lowprec+total_bg_PFT_lowprec

total_bg_PFT_lowprec/total_agb_PFT_lowprec
total_bg_PFT_nclim/total_agb_PFT_nclim
