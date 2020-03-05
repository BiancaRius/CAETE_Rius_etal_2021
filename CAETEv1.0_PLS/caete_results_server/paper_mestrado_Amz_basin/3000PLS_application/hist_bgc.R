library(ggplot2)

table=read.csv('/home/bianca/paper_mestrado_codes_results/caete_results_server/paper_mestrado_Amz_basin/3000PLS_application/3000_meanruns_nclim_lprec_pcs.csv')

hist_npp=ggplot(table, aes(x=table$npp, color=table$clima, fill=table$clima))+geom_histogram(alpha=0.3)+scale_fill_manual(values=c('deepskyblue4','green4'))+scale_color_manual(values=c('deepskyblue4','green4'))+labs(title="NPP")
hist_biomass=ggplot(table, aes(x=table$cmass, color=table$clima, fill=table$clima))+geom_histogram(alpha=0.3)+scale_fill_manual(values=c('deepskyblue4','green4'))+scale_color_manual(values=c('deepskyblue4','green4'))+labs(title="Biomass")
hist_gpp=ggplot(table, aes(x=table$gpp, color=table$clima, fill=table$clima))+geom_histogram(alpha=0.3)+scale_fill_manual(values=c('deepskyblue4','green4'))+scale_color_manual(values=c('deepskyblue4','green4'))+labs(title="GPP")
hist_rs=ggplot(table, aes(x=table$ra, color=table$clima, fill=table$clima))+geom_histogram(alpha=0.3)+scale_fill_manual(values=c('deepskyblue4','green4'))+scale_color_manual(values=c('deepskyblue4','green4'))+labs(title="A. respiration")

hist_cleaf=ggplot(table, aes(x=table$cleaf, color=table$clima, fill=table$clima))+geom_histogram(alpha=0.3)+scale_fill_manual(values=c('deepskyblue4','green4'))+scale_color_manual(values=c('deepskyblue4','green4'))+labs(title="Leaf biomass")

hist_cawood=ggplot(table, aes(x=table$cawood, color=table$clima, fill=table$clima))+geom_histogram(alpha=0.3)+scale_fill_manual(values=c('deepskyblue4','green4'))+scale_color_manual(values=c('deepskyblue4','green4'))+labs(title="Aboveground woody biomass")

hist_froots=ggplot(table, aes(x=table$cfroot, color=table$clima, fill=table$clima))+geom_histogram(alpha=0.3)+scale_fill_manual(values=c('deepskyblue4','green4'))+scale_color_manual(values=c('deepskyblue4','green4'))+labs(title="Fine roots biomass")