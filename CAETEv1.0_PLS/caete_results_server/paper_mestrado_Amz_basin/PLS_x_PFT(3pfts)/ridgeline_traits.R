library(ggplot2)
library(ggridges)

table_nclim_pft=read.csv("/home/bianca/paper_mestrado_codes_results/CAETE_versions/CAETEv1.0_3PFT/CAETEv1.0_3PFT_nclim/CAETEv1.0_3PFT_nclim_FD.csv")
table_lprec_pft=read.csv("/home/bianca/paper_mestrado_codes_results/CAETE_versions/CAETEv1.0_3PFT/CAETEv1.0_3PFT_lowprec/CAETEv1.0_3PFT_lowprec_FD.csv")
table_nclim_pls=read.csv("/home/bianca/paper_mestrado_codes_results/CAETE_versions/CAETEv1.0_PLS/caete_results_server/paper_mestrado_Amz_basin/3000PLS/3000_meanruns_nclim_FD.csv")
table_lprec_pls=read.csv("/home/bianca/paper_mestrado_codes_results/CAETE_versions/CAETEv1.0_PLS/caete_results_server/paper_mestrado_Amz_basin/3000PLS_application/3000_lowprec/3000_meanruns_lowprec_FD.csv")

table=rbind(table_lprec_pls,table_nclim_pls,table_lprec_pft,table_nclim_pft)

aroot=ggplot(table,aes(y=table$approach))+geom_density_ridges(aes(x=table$aroot_cwm,colour="darkgrey",fill=table$clima,alpha=.8))+scale_fill_manual(values=c("red","blue"))+theme_ridges(grid = FALSE)
aroot+scale_color_manual(values = c("darkgrey", "darkgrey"))+scale_y_discrete(expand = c(0, 0)) +scale_x_continuous(expand = c(0, 0))+
  labs(x="Fine roots allocation(%)",y="Approach")

aleaf=ggplot(table,aes(y=table$approach))+geom_density_ridges(aes(x=table$aleaf_cwm,colour="darkgrey",fill=table$clima,alpha=.8))+scale_fill_manual(values=c("red","blue"))+theme_ridges(grid = FALSE)
aleaf+scale_color_manual(values = c("darkgrey", "darkgrey"))+scale_y_discrete(expand = c(0, 0)) +scale_x_continuous(expand = c(0, 0))+
  labs(x="Leaves allocation(%)",y="Approach")

awood=ggplot(table,aes(y=table$approach))+geom_density_ridges(aes(x=table$awood_cwm,colour="darkgrey",fill=table$clima,alpha=.8))+scale_fill_manual(values=c("red","blue"))+theme_ridges(grid = FALSE)
awood+scale_color_manual(values = c("darkgrey", "darkgrey"))+scale_y_discrete(expand = c(0, 0)) +scale_x_continuous(expand = c(0, 0))+
  labs(x="ABGW allocation(%)",y="Approach")

troot=ggplot(table,aes(y=table$approach))+geom_density_ridges(aes(x=table$troot_cwm,colour="darkgrey",fill=table$clima,alpha=.8))+scale_fill_manual(values=c("red","blue"))+theme_ridges(grid = FALSE)
troot+scale_color_manual(values = c("darkgrey", "darkgrey"))+scale_y_discrete(expand = c(0, 0)) +scale_x_continuous(expand = c(0, 0))+
  labs(x="Fine roots allocation(%)",y="Approach")

tleaf=ggplot(table,aes(y=table$approach))+geom_density_ridges(aes(x=table$tleaf_cwm,colour="darkgrey",fill=table$clima,alpha=.8))+scale_fill_manual(values=c("red","blue"))+theme_ridges(grid = FALSE)
tleaf+scale_color_manual(values = c("darkgrey", "darkgrey"))+scale_y_discrete(expand = c(0, 0)) +scale_x_continuous(expand = c(0, 0))+
  labs(x="Leaves allocation(%)",y="Approach")

twood=ggplot(table,aes(y=table$approach))+geom_density_ridges(aes(x=table$twood_cwm,colour="darkgrey",fill=table$clima,alpha=.8))+scale_fill_manual(values=c("red","blue"))+theme_ridges(grid = FALSE)
twood+scale_color_manual(values = c("darkgrey", "darkgrey"))+scale_y_discrete(expand = c(0, 0)) +scale_x_continuous(expand = c(0, 0))+
  labs(x="Leaves allocation(%)",y="Approach")


