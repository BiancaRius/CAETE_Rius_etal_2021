library(dplyr)
df_50=read.csv("/home/bianca/paper_mestrado_codes_results/caete_results_server/paper_mestrado_Amz_basin/50PLS/50_nclimate/out50_nclim.csv",header=TRUE)

df_grouped_50=group_by(df_50,nx,ny,lat,lon,add=FALSE)
colu=vars(gpp,ra,npp,rc,et,wue,cue,cmass,cleaf,cfroot,cawood,tleaf_cwm,twood_cwm,troot_cwm,aleaf_cwm,awood_cwm,aroot_cwm)
df_grouped_mean_50 = summarise_at(df_grouped_50,.funs = mean,.vars=colu)
write.csv(df_grouped_mean_50, file="/home/bianca/paper_mestrado_codes_results/caete_results_server/paper_mestrado_Amz_basin/50PLS/50_meanruns_nclim.csv")
