library(ggplot2)

table=read.csv('/home/bianca/paper_mestrado_codes_results/caete_results_server/paper_mestrado_Amz_basin/3000PLS_application/3000_meanruns_nclim_lprec_pcs.csv')


bp_npp=ggplot(table, aes(x=table$clima,y=table$npp, fill=table$clima))+geom_boxplot()+scale_x_discrete(name="Climate")+scale_y_discrete(name="NPP")+scale_fill_manual(values=c('grey69','black'))
bp_npp

bp_gpp=ggplot(table, aes(x=table$clima,y=table$gpp, fill=table$clima))+geom_boxplot()+scale_x_discrete(name="Climate")+scale_y_discrete(name="GPP")+scale_fill_manual(values=c('grey69','black'))
bp_gpp

bp_ar=ggplot(table, aes(x=table$clima,y=table$ra, fill=table$clima))+geom_boxplot()+scale_x_discrete(name="Climate")+scale_y_discrete(name="A. respiration")+scale_fill_manual(values=c('grey69','black'))
bp_ar

bp_cmass=ggplot(table, aes(x=table$clima,y=table$cmass, fill=table$clima))+geom_boxplot()+scale_x_discrete(name="Climate")+scale_y_discrete(name="Biomass")+scale_fill_manual(values=c('grey69','black'))
bp_cmass
