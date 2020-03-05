library(factoextra)
library(dplyr)
mruns_nclim=read.csv("/home/bianca/paper_mestrado_codes_results/CAETE_versions/CAETEv1.0_3PFT/CAETEv1.0_3PFT_nclim/CAETEv1.0_3PFT_nclim.csv")
mruns_lowprec=read.csv("/home/bianca/paper_mestrado_codes_results/CAETE_versions/CAETEv1.0_3PFT/CAETEv1.0_3PFT_lowprec/CAETEv1.0_3PFT_lowprec.csv")

mruns_table=rbind(mruns_lowprec,mruns_nclim)

groups=as.factor(mruns_table$clima)

png("/home/bianca/backup/PCA.png", width = 6, height = 4, units = 'in', res = 400)
table_traits=mruns_table[,17:22]
names(table_traits)=c("Leaf residence time", "Woody residence time","Root residence time","Leaf allocation","Woody allocation", "Root allocation")
pca=prcomp(table_traits, scale = TRUE)
pca2=fviz_pca_biplot(pca,geom=c("point"),pointshape=21,pointsize=2.5,geom.var = c("arrow","text"),col.ind=groups,fill.ind=groups,labelsize=4,palette=c("red1","midnightblue"),alpha.ind=0.5,repel=TRUE,legend.title= "",col.var="black", title = "")
pca3=pca2+theme(panel.background=element_blank(),panel.grid.major=element_blank(),axis.text=element_text(size=12), axis.title.x=element_text(size=10),legend.title = element_text(size=10),legend.text = element_text(size=0))+xlab("PC1 (84.3%)")+ylab("PC2 (11.7%)")
pca3
dev.off()
summary(pca)
pca$rotation
pca$center
pca$scale
new_variables<-pca$x
df_new_variables<-as.data.frame(new_variables)
colnames(df_new_variables)
final_table<-bind_cols(mruns_table,df_new_variables)
write.csv(final_table, file = "/home/bianca/paper_mestrado_codes_results/CAETE_versions/CAETEv1.0_3PFT/lowprec_x_nclim/3PFTs_meanruns_nclim_lprec_pcs.csv")


#hypervolume
table_lprec_nclim = read.csv("/home/bianca/backup/paper_mestrado_Amz_basin/3000PLS_application/3000_meanruns_nclim_lprec_pcs.csv")

nclim = table_lprec_nclim[table_lprec_nclim$clima=='nclim',]
nclim_traits=nclim[,25:27]
hv_nclim=hypervolume(nclim_traits, method = "gaussian",name="Regular Climate \n Volume= 0.89")
hv_nclim


lprec = table_lprec_nclim[table_lprec_nclim$clima=='lowprec',]
lowprec_traits=lprec[,25:27]
hv_lprec=hypervolume(lowprec_traits,method = "gaussian",name="Low Precipitation \n Volume=25.55")
cl=c("red2","midnightblue")

list=hypervolume_join(hv_lprec,hv_nclim)

hypervl=plot.HypervolumeList(list,show.density=TRUE,show.legend = FALSE, show.random = TRUE,cex.axis = 1, show.data=TRUE,show.centroid = TRUE,show.contour = TRUE,contour.lwd=0.5,contour.type ="kde", colors = cl,cex.data = 0.3,cex.legend = 0,cex.centroid=2,contour.raster.resolution = 0.1,reshuffle = FALSE,contour.kde.level = 0)
#####
fig=grid.arrange(pca3,hypervl,ncol=2,nrow=1)

#ploting pair to pair PCA axes"
plot1=fviz_pca_biplot(pca,geom=c("point"),axes=c(2,1),geom.var = c("arrow","text"),repel=TRUE,col.ind = groups,legend.title= "Climate condition",col.var="black", title = "PCA (regular climate + low precipitation)")
plot2=fviz_pca_biplot(pca,geom=c("point"),axes=c(3,1),geom.var = c("arrow","text"),repel=TRUE,col.ind = groups,legend.title= "Climate condition",col.var="black", title = "PCA (regular climate + low precipitation)")
plot3=fviz_pca_biplot(pca,geom=c("point"),axes=c(3,2),geom.var = c("arrow","text"),repel=TRUE,col.ind = groups,legend.title= "Climate condition",col.var="black", title = "PCA (regular climate + low precipitation)")
grid.arrange(plot1,plot2,plot3,nrow=2)
