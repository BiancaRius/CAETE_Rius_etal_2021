library(TPD)
table_nclim=read.csv("/home/bianca/paper_mestrado_codes_results/CAETEv1.0_PLS/caete_results_server/paper_mestrado_Amz_basin/3000PLS_application/3000_meanruns_nclim.csv")
table_lprec=read.csv("/home/bianca/paper_mestrado_codes_results/CAETEv1.0_PLS/caete_results_server/paper_mestrado_Amz_basin/3000PLS_application/3000_meanruns_lowprec.csv")

table=rbind(table_nclim,table_lprec)

#teste 1 (sp as climate)
sp_caete<-table$clima
tleaf<-table$tleaf_cwm
TPD_tleaf<-TPDs(species=sp_caete,tleaf)
FD_tleaf<-REND(TPDs = TPD_tleaf)
plotTPD(TPD_tleaf,color="palegreen3",leg=TRUE,leg.text = paste0("Clima: ",names(FD_tleaf$species$FRichness),"\n","R=", round(FD_tleaf$species$FRichness,3),"\n","E=", round(FD_tleaf$species$FEvenness,3),"\n","D=",round(FD_tleaf$species$FDivergence,3)))

#verify redundancy