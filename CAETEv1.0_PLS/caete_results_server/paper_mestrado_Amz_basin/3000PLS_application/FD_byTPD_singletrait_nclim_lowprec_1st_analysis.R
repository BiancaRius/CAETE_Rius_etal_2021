library(TPD)
table_nclim=read.csv("/home/bianca/paper_mestrado_codes_results/CAETEv1.0_PLS/caete_results_server/paper_mestrado_Amz_basin/3000PLS_application/3000_meanruns_nclim.csv")
table_lprec=read.csv("/home/bianca/paper_mestrado_codes_results/CAETEv1.0_PLS/caete_results_server/paper_mestrado_Amz_basin/3000PLS_application/3000_meanruns_lowprec.csv")

table=rbind(table_lprec,table_nclim)

####residence time traits#####

#######LEAF#######
##########Calculating TPD##########
sp_caete<-table$clima
tleaf<-table$tleaf_cwm
TPD_tleaf<-TPDs(species=sp_caete,tleaf)
FD_tleaf<-REND(TPDs = TPD_tleaf)
plotTPD(TPD_tleaf,color="palegreen3",leg=TRUE,leg.text = paste0("Clima: ",names(FD_tleaf$species$FRichness),"\n","R=", round(FD_tleaf$species$FRichness,3),"\n","E=", round(FD_tleaf$species$FEvenness,3),"\n","D=",round(FD_tleaf$species$FDivergence,3)))
dis_tleaf<-dissim(TPD_tleaf)
plot(dis_tleaf)
##########Calculating dissimilarity##########
par(mfrow=c(1,1))
plot(TPD_tleaf$data$evaluation_grid, TPD_tleaf$TPDs[[1]], type="n", 
     ylim = c(0,max(sapply(TPD_tleaf$TPDs, max))))

for (i in 1:length(TPD_tleaf$TPDs)){
  lines(TPD_tleaf$data$evaluation_grid, TPD_tleaf$TPDs[[i]], lwd=2, col=i)
}
legend("topright", bty = "n", lwd = 2, col = 1:length(TPD_tleaf$TPDs),
       legend = names(TPD_tleaf$TPDs))


#######FINE ROOTS#######
##########Calculating TPD##########
sp_caete<-table$clima
troot<-table$troot_cwm
TPD_troot<-TPDs(species=sp_caete,troot)
FD_troot<-REND(TPDs = TPD_troot)
plotTPD(TPD_troot,color="steelblue3",leg=TRUE,leg.text = paste0("Clima: ",names(FD_troot$species$FRichness),"\n","R=", round(FD_troot$species$FRichness,3),"\n","E=", round(FD_troot$species$FEvenness,3),"\n","D=",round(FD_troot$species$FDivergence,3)))
dis_troot=dissim(TPD_troot)
plot(dis_troot)
##########Calculating dissimilarity##########
par(mfrow=c(1,1))
plot(TPD_troot$data$evaluation_grid, TPD_troot$TPDs[[1]], type="n", 
     ylim = c(0,max(sapply(TPD_troot$TPDs, max))),xlab="Trait value",ylab="Trait value probability")
title(main="Fine roots residence time")

for (i in 1:length(TPD_troot$TPDs)){
  lines(TPD_troot$data$evaluation_grid, TPD_troot$TPDs[[i]], lwd=2, col=i)
}
legend("topright", bty = "n", lwd = 2, col = 1:length(TPD_troot$TPDs),
       legend = names(TPD_troot$TPDs))


#######Aboveground woody tissue#######
##########Calculating TPD##########
sp_caete<-table$clima
twood<-table$twood_cwm
TPD_twood<-TPDs(species=sp_caete,twood)
FD_twood<-REND(TPDs = TPD_twood)
plotTPD(TPD_twood,color="tan3",leg=TRUE,leg.text = paste0("Clima: ",names(FD_twood$species$FRichness),"\n","R=", round(FD_twood$species$FRichness,3),"\n","E=", round(FD_twood$species$FEvenness,3),"\n","D=",round(FD_twood$species$FDivergence,3)))
dis_twood=dissim(TPD_twood)
##########Calculating dissimilarity##########
par(mfrow=c(1,1))
plot(TPD_twood$data$evaluation_grid, TPD_twood$TPDs[[1]], table$clima type="n", 
     ylim = c(0,max(sapply(TPD_twood$TPDs, max))),xlab="Trait value",ylab="Trait value probability")
title(main="Aboveground woody tissue residence time")

for (i in 1:length(TPD_twood$TPDs)){
  lines(TPD_twood$data$evaluation_grid, TPD_twood$TPDs[[i]], lwd=2, col=i)
}
legend("topright", bty = "n", lwd = 2, col = 1:length(TPD_twood$TPDs),
       legend = names(TPD_twood$TPDs))




#allocation traits
sp_caete<-table$clima
aleaf<-table$aleaf_cwm
TPD_aleaf<-TPDs(species=sp_caete,aleaf)
FD_aleaf<-REND(TPDs = TPD_aleaf)
plotTPD(TPD_aleaf,color="palegreen3",leg=TRUE,leg.text = paste0("Clima: ",names(FD_aleaf$species$FRichness),"\n","R=", round(FD_aleaf$species$FRichness,3),"\n","E=", round(FD_aleaf$species$FEvenness,3),"\n","D=",round(FD_aleaf$species$FDivergence,3)))
dist_aleaf=dissim(TPD_aleaf)

sp_caete<-table$clima
aroot<-table$aroot_cwm
TPD_aroot<-TPDs(species=sp_caete,aroot)
FD_aroot<-REND(TPDs = TPD_aroot)
plotTPD(TPD_aroot,color="steelblue3",leg=TRUE,leg.text = paste0("Clima: ",names(FD_aroot$species$FRichness),"\n","R=", round(FD_aroot$species$FRichness,3),"\n","E=", round(FD_aroot$species$FEvenness,3),"\n","D=",round(FD_aroot$species$FDivergence,3)))


sp_caete<-table$clima
awood<-table$awood_cwm
TPD_awood<-TPDs(species=sp_caete,awood)
FD_awood<-REND(TPDs = TPD_awood)
plotTPD(TPD_awood,color="tan3",leg=TRUE,leg.text = paste0("Clima: ",names(FD_awood$species$FRichness),"\n","R=", round(FD_awood$species$FRichness,3),"\n","E=", round(FD_awood$species$FEvenness,3),"\n","D=",round(FD_awood$species$FDivergence,3)))

#verify redundancy




