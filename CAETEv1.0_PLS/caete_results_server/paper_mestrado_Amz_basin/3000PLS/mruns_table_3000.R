library(dplyr)
df_3000=read.csv("/home/bianca/paper_mestrado_codes_results/caete_results_server/paper_mestrado_Amz_basin/3000PLS/3000_nclimate/out3000_nclim.csv",header=TRUE)

df_grouped_3000=group_by(df_3000,nx,ny,lat,lon,add=FALSE)
colu=vars(gpp,ra,npp,rc,et,wue,cue,cmass,cleaf,cfroot,cawood,tleaf_cwm,twood_cwm,troot_cwm,aleaf_cwm,awood_cwm,aroot_cwm)
df_grouped_mean_3000 = summarise_at(df_grouped_3000,.funs = mean,.vars=colu)
write.csv(df_grouped_mean_3000, file="/home/bianca/paper_mestrado_codes_results/caete_results_server/paper_mestrado_Amz_basin/3000PLS/3000_meanruns_nclim.csv")
