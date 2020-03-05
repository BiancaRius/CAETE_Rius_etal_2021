data=read.csv("/home/bianca/paper_mestrado_codes_results/caete_results_server/paper_mestrado_Amz_basin/3000PLS_application/3000_meanruns_nclim_lprec_pcs.csv")

lowprec=data[data$clima=="lowprec",]

nclim=data[data$clima=="nclim",]

npp_lowprec=lowprec$npp

npp_nclim=nclim$npp
plotting=ggplot(mod, aes(x=mod$,y=bac$value5))+geom_smooth(method="lm",colour="darkgrey",size=0.3) #creates a 1:1 line

try=qqplot(npp_lowprec,npp_nclim)+plotting