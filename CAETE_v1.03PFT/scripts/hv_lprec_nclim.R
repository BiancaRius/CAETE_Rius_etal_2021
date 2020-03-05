library(hypervolume)
table_lprec_nclim = read.csv("/home/bianca/paper_mestrado_codes_results/CAETE_versions/CAETEv1.0_3PFT/lowprec_x_nclim/3PFTs_meanruns_nclim_lprec_pcs.csv")

nclim = table_lprec_nclim[table_lprec_nclim$clima=='nclim',]
nclim_traits=nclim[,24:25]
hv_nclim=hypervolume(nclim_traits, method = "gaussian",name="Regular Climate \n Volume= 0.89")
hv_nclim


lprec = table_lprec_nclim[table_lprec_nclim$clima=='lowprec',]
lowprec_traits=lprec[,24:25]
hv_lprec=hypervolume(lowprec_traits,method = "gaussian",name="Low Precipitation \n Volume=25.55")
cl=c("red2","midnightblue")

list=hypervolume_join(hv_lprec,hv_nclim)

plot.HypervolumeList(list,show.density=TRUE,show.legend = FALSE, show.random = TRUE,cex.axis = 1, show.data=TRUE,show.centroid = TRUE,show.contour = TRUE,contour.lwd=0.5,contour.type ="kde", colors = cl,cex.data = 0.3,cex.legend = 1.2,cex.centroid=2,contour.raster.resolution = 0.1,reshuffle = FALSE,contour.kde.level = 0)
plot.HypervolumeList(list,show.3d = TRUE, show.random = FALSE, show.data=TRUE,show.centroid = TRUE,show.contour = FALSE,contour.type ="kde", colors = cl, point.dark.factor = 0,cex.data = 0.9, show.legend = FALSE)
hypervolume_save_animated_gif(file.name="gif_egu",directory.output = '/home/bianca/paper_mestrado_codes_results/caete_results_server/paper_mestrado_Amz_basin/3000PLS_application/results_lowprec_x_nclim')

plot.HypervolumeList(list, show.random = FALSE, show.data=FALSE,show.centroid = TRUE,show.contour =TRUE,contour.type ="kde", colors = cl, point.dark.factor = 0,cex.data = 0.9,cex.legend = 1.2)


hv_dis_nclim_lprec<-hypervolume_distance(hv_nclim,hv_lprec, type="centroid", check.memory=FALSE)
hv_dis_nclim_lprec
hv_set_nclim_lprec<-hypervolume_set(hv1 = hv_nclim,hv2=hv_lprec,verbose=TRUE,check.memory = FALSE)
hv_set_nclim_lprec
get_volume(hv_set_nclim_lprec)
hv_set_nclim_lprec_ov<-hypervolume_overlap_statistics(hv_set_nclim_lprec)
hv_set_nclim_lprec_ov
