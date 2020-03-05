library(dplyr)
df_200=read.csv("/home/bianca/paper_mestrado_codes_results/caete_results_server/paper_mestrado_Amz_basin/200PLS/200_nclimate/out200_nclim.csv",header=TRUE)

df_grouped_200=group_by(df_200,nx,ny,lat,lon,add=FALSE)
colu=vars(gpp,ra,npp,rc,et,wue,cue,cmass,cleaf,cfroot,cawood,tleaf_cwm,twood_cwm,troot_cwm,aleaf_cwm,awood_cwm,aroot_cwm)
df_grouped_mean_200 = summarise_at(df_grouped_200,.funs = mean,.vars=colu)
write.csv(df_grouped_mean_200, file="/home/bianca/paper_mestrado_codes_results/caete_results_server/paper_mestrado_Amz_basin/200PLS/200_meanruns_nclim.csv")
