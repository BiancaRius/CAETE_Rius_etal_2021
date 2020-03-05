library(dplyr)
df_100=read.csv("/home/bianca/paper_mestrado_codes_results/caete_results_server/paper_mestrado_Amz_basin/100PLS/100_nclimate/out100_nclim.csv",header=TRUE)

df_grouped_100=group_by(df_100,nx,ny,lat,lon,add=FALSE)
colu=vars(gpp,ra,npp,rc,et,wue,cue,cmass,cleaf,cfroot,cawood,tleaf_cwm,twood_cwm,troot_cwm,aleaf_cwm,awood_cwm,aroot_cwm)
df_grouped_mean_100 = summarise_at(df_grouped_100,.funs = mean,.vars=colu)
write.csv(df_grouped_mean_100, file="/home/bianca/paper_mestrado_codes_results/caete_results_server/paper_mestrado_Amz_basin/100PLS/100_meanruns_nclim.csv")
