library(TPD)
table=read.csv("/home/bianca/paper_mestrado_codes_results/caete_results_server/paper_mestrado_Amz_basin/PLS_number_choice/all_pls_mruns.csv")

####residence time traits#####
#######LEAF#######
##########Calculating TPD##########
sp_caete<-table$PLS
tleaf<-table$tleaf_cwm
TPD_tleaf<-TPDs(species=sp_caete,tleaf)
FD_tleaf<-REND(TPDs = TPD_tleaf)
plotTPD(TPD_tleaf,color="palegreen3",leg=TRUE,leg.text = paste0("PLS: ",names(FD_tleaf$species$FRichness),"\n","R=", round(FD_tleaf$species$FRichness,3),"\n","E=", round(FD_tleaf$species$FEvenness,3),"\n","D=",round(FD_tleaf$species$FDivergence,3)))
##########Calculating dissimilarity##########
dis_tleaf<-dissim(TPD_tleaf)
dis_tleaf

#######FINE ROOTS#######
##########Calculating TPD##########
sp_caete<-table$PLS
troot<-table$troot_cwm
TPD_troot<-TPDs(species=sp_caete,troot)
FD_troot<-REND(TPDs = TPD_troot)
plotTPD(TPD_troot,color="steelblue3",leg=TRUE,leg.text = paste0("PLS: ",names(FD_troot$species$FRichness),"\n","R=", round(FD_troot$species$FRichness,3),"\n","E=", round(FD_troot$species$FEvenness,3),"\n","D=",round(FD_troot$species$FDivergence,3)))
##########Calculating dissimilarity##########
dis_troot<-dissim(TPD_troot)
dis_troot

#######Aboveground woody tissue#######
##########Calculating TPD##########
sp_caete<-table$PLS
twood<-table$twood_cwm
TPD_twood<-TPDs(species=sp_caete,twood)
FD_twood<-REND(TPDs = TPD_twood)
plotTPD(TPD_twood,color="tan3",leg=TRUE,leg.text = paste0("PLS: ",names(FD_twood$species$FRichness),"\n","R=", round(FD_twood$species$FRichness,3),"\n","E=", round(FD_twood$species$FEvenness,3),"\n","D=",round(FD_twood$species$FDivergence,3)))
##########Calculating dissimilarity##########
dis_twood<-dissim(TPD_twood)
dis_twood

####allocation traits#####
#######LEAF#######
##########Calculating TPD##########
sp_caete<-table$PLS
aleaf<-table$aleaf_cwm
TPD_aleaf<-TPDs(species=sp_caete,aleaf)
FD_aleaf<-REND(TPDs = TPD_aleaf)
plotTPD(TPD_aleaf,color="palegreen3",leg=TRUE,leg.text = paste0("PLS: ",names(FD_aleaf$species$FRichness),"\n","R=", round(FD_aleaf$species$FRichness,3),"\n","E=", round(FD_aleaf$species$FEvenness,3),"\n","D=",round(FD_aleaf$species$FDivergence,3)))
##########Calculating dissimilarity##########
dis_aleaf<-dissim(TPD_aleaf)
dis_aleaf

#######FINE ROOTS#######
##########Calculating TPD##########
sp_caete<-table$PLS
aroot<-table$aroot_cwm
TPD_aroot<-TPDs(species=sp_caete,aroot)
FD_aroot<-REND(TPDs = TPD_aroot)
plotTPD(TPD_aroot,color="steelblue3",leg=TRUE,leg.text = paste0("PLS: ",names(FD_aroot$species$FRichness),"\n","R=", round(FD_aroot$species$FRichness,3),"\n","E=", round(FD_aroot$species$FEvenness,3),"\n","D=",round(FD_aroot$species$FDivergence,3)))
##########Calculating dissimilarity##########
dis_aroot<-dissim(TPD_aroot)
dis_aroot

#######FINE ROOTS#######
##########Calculating TPD##########
sp_caete<-table$PLS
awood<-table$awood_cwm
TPD_awood<-TPDs(species=sp_caete,awood)
FD_awood<-REND(TPDs = TPD_awood)
plotTPD(TPD_awood,color="steelblue3",leg=TRUE,leg.text = paste0("PLS: ",names(FD_awood$species$FRichness),"\n","R=", round(FD_awood$species$FRichness,3),"\n","E=", round(FD_awood$species$FEvenness,3),"\n","D=",round(FD_awood$species$FDivergence,3)))
##########Calculating dissimilarity##########
dis_aroot<-dissim(TPD_aroot)
dis_aroot

