library(ggplot2)

data=read.csv("/home/bianca/paper_mestrado_codes_results/caete_results_server/paper_mestrado_Amz_basin/3000PLS_application/3000_meanruns_nclim_lprec_pcs.csv")

#Biogeochemical cycles
clima=data$clima
###NPP###
npp_den=ggplot(data,aes(x=data$npp,color=clima, fill=clima))+geom_density(alpha=0.6)+scale_fill_manual(values = c("darkorchid4","deepskyblue"))+scale_color_manual(values = c("darkorchid4","deepskyblue"))+labs(title = "NPP", x="NPP value",y="Density")

###GPP###
gpp_den=ggplot(data,aes(x=data$gpp,color=clima, fill=clima))+geom_density(alpha=0.6)+scale_fill_manual(values = c("darkorchid4","deepskyblue"))+scale_color_manual(values = c("darkorchid4","deepskyblue"))+labs(title = "GPP", x="GPP value",y="Density")
gpp_den

###Total biomass###
cmass_den=ggplot(data,aes(x=data$cmass,color=clima, fill=clima))+geom_density(alpha=0.6)+scale_fill_manual(values = c("darkorchid4","deepskyblue"))+scale_color_manual(values = c("darkorchid4","deepskyblue"))+labs(title = "Total biomass", x="Total biomass value",y="Density")
cmass_den

###Cleaf###
cleaf_den=ggplot(data,aes(x=data$cleaf,color=clima, fill=clima))+geom_density(alpha=0.6)+scale_fill_manual(values = c("darkgreen","green"))+scale_color_manual(values = c("darkgreen","green"))+labs(title = "Leaf biomass", x="Leaf biomass value",y="Density")
cleaf_den

###Cfroot###
cfroot_den=ggplot(data,aes(x=data$cfroot,color=clima, fill=clima))+geom_density(alpha=0.6)+scale_fill_manual(values = c("deepskyblue4","deepskyblue1"))+scale_color_manual(values = c("deepskyblue4","deepskyblue1"))+labs(title = "Fine roots biomass", x="Fine roots biomass value",y="Density")
cfrppt_den

###Cawood###
cawood_den=ggplot(data,aes(x=data$cawood,color=clima, fill=clima))+geom_density(alpha=0.6)+scale_fill_manual(values = c("chocolate4","chocolate"))+scale_color_manual(values = c("chocolate4","chocolate"))+labs(title = "Aboveground woody biomass", x="Aboveground woody biomass value",y="Density")
