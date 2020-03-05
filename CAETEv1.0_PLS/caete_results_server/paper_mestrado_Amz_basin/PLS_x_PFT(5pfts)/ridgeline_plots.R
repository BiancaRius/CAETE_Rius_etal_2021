library(ggplot2)
library(ggridges)

PLS=read.csv("/home/bianca/paper_mestrado_codes_results/CAETE_versions/CAETEv1.0_PLS/caete_results_server/paper_mestrado_Amz_basin/PLS_x_PFT(5pfts)/3000_meanruns_nclim_lprec_approach.csv")
PFT=read.csv("/home/bianca/paper_mestrado_codes_results/CAETE_versions/CAETEv1.0_PLS/caete_results_server/paper_mestrado_Amz_basin/PLS_x_PFT(5pfts)/5PFTs_meanruns_nclim_lprec_approach.csv")

binded=rbind(PLS,PFT)

ridges_npp=ggplot(binded,aes(x=binded$npp, y=binded$clima_approach, fill=binded$clima_approach))+geom_density_ridges(alpha=0.7)+scale_fill_manual(values = c("green","darkgreen","deepskyblue","deepskyblue4"))+labs(x="NPP Value (kgC/m2/yr)",y="Density per approach")+guides(fill=FALSE)
ridges_gpp=ggplot(binded,aes(x=binded$gpp,y=binded$clima_approach,fill=binded$clima_approach))+geom_density_ridges(alpha=0.7)+scale_fill_manual(values= c("green","darkgreen","deepskyblue","deepskyblue4"))+labs(x="GPP Value (kgC/m2/yr)",y="Density per approach")+guides(fill=FALSE)
ridges_cmass=ggplot(binded,aes(x=binded$cmass,y=binded$clima_approach,fill=binded$clima_approach))+geom_density_ridges(alpha=0.7)+scale_fill_manual(values= c("green","darkgreen","deepskyblue","deepskyblue4"))+labs(x="Total biomass (kgC/m2)",y="Density per approach")+guides(fill=FALSE)

ridges_cleaf=ggplot(binded, aes(x=binded$cleaf, y=binded$clima_approach, fill=binded$clima_approach))+geom_density_ridges(alpha=0.7)+scale_fill_manual(values= c("green","darkgreen","deepskyblue","deepskyblue4"))+labs(x="Leaf biomass (kgC/m2)",y="Density per approach")+guides(fill=FALSE)

ridges_cfroot=ggplot(binded, aes(x=binded$cfroot, y=binded$clima_approach, fill=binded$clima_approach))+geom_density_ridges(alpha=0.7)+scale_fill_manual(values= c("green","darkgreen","deepskyblue","deepskyblue4"))+labs(x="Fine roots biomass (kgC/m2)",y="Density per approach")+guides(fill=FALSE)

ridges_cawood=ggplot(binded, aes(x=binded$cawood, y=binded$clima_approach, fill=binded$clima_approach))+geom_density_ridges(alpha=0.7)+scale_fill_manual(values= c("green","darkgreen","deepskyblue","deepskyblue4"))+labs(x="Aboveground woody biomass (kgC/m2)",y="Density per approach")+guides(fill=FALSE)
