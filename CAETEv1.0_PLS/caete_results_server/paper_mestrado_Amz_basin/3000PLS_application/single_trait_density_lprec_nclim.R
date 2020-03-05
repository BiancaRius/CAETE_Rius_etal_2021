library(ggplot2)
library(gridExtra)

table_nclim=read.csv("/home/bianca/paper_mestrado_codes_results/caete_results_server/paper_mestrado_Amz_basin/3000PLS_application/3000_meanruns_nclim.csv")
table_lprec=read.csv("/home/bianca/paper_mestrado_codes_results/caete_results_server/paper_mestrado_Amz_basin/3000PLS_application/3000_meanruns_lowprec.csv")

table=rbind(table_nclim,table_lprec)

legend_title<-"Climate \nCondition"

###Residence time traits###
tb_tleaf=table[c("clima","tleaf_cwm")]
p_tleaf=ggplot(tb_tleaf,aes(x=tb_tleaf$tleaf_cwm,color=tb_tleaf$clima,fill=tb_tleaf$clima))+geom_density(alpha=0.6)
tleaf=p_tleaf+scale_fill_manual(values = c("seagreen4","palegreen2"))+scale_color_manual(values = c("seagreen4","palegreen2"))+labs(x="Trait Value (years)",y="Density")+ggtitle("Leaves")+theme(plot.title=element_text(hjust=0.5))
tleaf=tleaf+labs(fill="Climate condition")+guides(color=FALSE)+theme(legend.position = "top")

tb_troot=table[c("clima","troot_cwm")]
p_troot=ggplot(tb_troot,aes(x=tb_troot$troot_cwm,color=tb_troot$clima,fill=tb_troot$clima))+geom_density(alpha=0.6)
troot=p_troot+scale_fill_manual(values = c("steelblue4","steelblue1"))+scale_color_manual(values = c("steelblue4","steelblue1"))+labs(x="Trait Value (years)")+theme(axis.title.y = element_blank())+ggtitle("Fine roots")+theme(plot.title=element_text(hjust=0.5))
troot=troot+labs(fill="Climate condition")+guides(color=FALSE)+theme(legend.position = "top")


tb_twood=table[c("clima","twood_cwm")]
p_twood=ggplot(tb_twood,aes(x=tb_twood$twood_cwm,color=tb_twood$clima,fill=tb_twood$clima))+geom_density(alpha=0.6)
twood=p_twood+scale_fill_manual(values = c("burlywood4","burlywood"))+scale_color_manual(values = c("burlywood4","burlywood"))+labs(x="Trait Value (years)")+theme(axis.title.y = element_blank())+ggtitle("Aboveground woody tissue")+theme(plot.title=element_text(hjust=0.5))
twood=twood+labs(fill="Climate condition")+guides(color=FALSE)+theme(legend.position = "top")

###Allocation traits###
tb_aleaf=table[c("clima","aleaf_cwm")]
p_aleaf=ggplot(tb_aleaf,aes(x=tb_aleaf$aleaf_cwm,color=tb_aleaf$clima,fill=tb_aleaf$clima))+geom_density(alpha=0.6)
aleaf=p_aleaf+scale_fill_manual(values = c("seagreen4","palegreen2"))+scale_color_manual(values = c("seagreen4","palegreen2"))+labs(x="Trait Value (%)",y="")+ggtitle("Leaves")
aleaf=aleaf+labs(fill="Climate condition")+guides(color=FALSE)+theme_light()+theme(legend.position = "top")+theme(plot.title=element_text(hjust=0.5))
aleaf

tb_aroot=table[c("clima","aroot_cwm")]
p_aroot=ggplot(tb_aroot,aes(x=tb_aroot$aroot_cwm,color=tb_aroot$clima,fill=tb_aroot$clima))+geom_density(alpha=0.6)
aroot=p_aroot+scale_fill_manual(values = c("steelblue4","steelblue1"))+scale_color_manual(values = c("steelblue4","steelblue1"))+labs(x="Trait Value (%)",y="Probability Density")+theme(axis.title.y = element_blank())+ggtitle("Fine roots")
aroot=aroot+labs(fill="Climate condition")+guides(color=FALSE)+theme_light()+theme(legend.position = "top")+theme(plot.title=element_text(hjust=0.5))
aroot

tb_awood=table[c("clima","awood_cwm")]
p_awood=ggplot(tb_awood,aes(x=tb_awood$awood_cwm,color=tb_awood$clima,fill=tb_awood$clima))+geom_density(alpha=0.6)
awood=p_awood+scale_fill_manual(values = c("burlywood4","burlywood"))+scale_color_manual(values = c("burlywood4","burlywood"))+labs(x="Trait Value (%)",y="")+theme(axis.title.y = element_blank())+ggtitle("Aboveground woody tissues")+theme(plot.title=element_text(hjust=0.5))
awood=awood+labs(fill="Climate condition")+guides(color=FALSE)+theme_light()+theme(legend.position = "top")+theme(plot.title=element_text(hjust=0.5))
awood


grid.arrange(aroot,awood,aleaf, ncol=3)
