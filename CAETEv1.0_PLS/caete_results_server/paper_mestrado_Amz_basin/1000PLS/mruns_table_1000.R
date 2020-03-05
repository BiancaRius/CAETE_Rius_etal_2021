library(dplyr)
df_1000=read.csv("/home/bianca/paper_mestrado_codes_results/caete_results_server/paper_mestrado_Amz_basin/1000PLS/1000_nclimate/out1000_nclim.csv",header=TRUE)

df_grouped_1000=group_by(df_1000,nx,ny,lat,lon,add=FALSE)
colu=vars(gpp,ra,npp,rc,et,wue,cue,cmass,cleaf,cfroot,cawood,tleaf_cwm,twood_cwm,troot_cwm,aleaf_cwm,awood_cwm,aroot_cwm)
df_grouped_mean_1000 = summarise_at(df_grouped_1000,.funs = mean,.vars=colu)
write.csv(df_grouped_mean_1000, file="/home/bianca/paper_mestrado_codes_results/caete_results_server/paper_mestrado_Amz_basin/1000PLS/1000_meanruns_nclim.csv")
