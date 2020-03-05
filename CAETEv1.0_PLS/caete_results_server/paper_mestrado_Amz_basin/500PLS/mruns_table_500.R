library(dplyr)
df_500=read.csv("/home/bianca/paper_mestrado_codes_results/caete_results_server/paper_mestrado_Amz_basin/500PLS/500_nclimate/out500_nclim.csv",header=TRUE)

df_grouped_500=group_by(df_500,nx,ny,lat,lon,add=FALSE)
colu=vars(gpp,ra,npp,rc,et,wue,cue,cmass,cleaf,cfroot,cawood,tleaf_cwm,twood_cwm,troot_cwm,aleaf_cwm,awood_cwm,aroot_cwm)
df_grouped_mean_500 = summarise_at(df_grouped_500,.funs = mean,.vars=colu)
write.csv(df_grouped_mean_500, file="/home/bianca/paper_mestrado_codes_results/caete_results_server/paper_mestrado_Amz_basin/500PLS/500_meanruns_nclim.csv")
