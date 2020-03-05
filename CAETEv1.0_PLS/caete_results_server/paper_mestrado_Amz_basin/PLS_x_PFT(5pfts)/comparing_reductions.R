library(raster)
#calculates the emission of C because of low precipitation
cmass_kg_PFT <-raster("/home/bianca/paper_mestrado_codes_results/caete_results_server/paper_mestrado_Amz_basin/5PFTs_application/results/cmass_reduction_area_PFT.tif")

cmass_kg_PLS<-raster("/home/bianca/paper_mestrado_codes_results/caete_results_server/paper_mestrado_Amz_basin/3000PLS_application/results_lowprec_x_nclim/cmass_reduction_area_PLS.tif")

PFT_sum=cellStats(cmass_kg_PFT, stat="sum")
total_lost_PFT=PFT_sum*(10^-12)

PLS_sum=cellStats(cmass_kg_PLS, stat = "sum")
total_lost_PLS=PLS_sum*(10^-12)

#calculates mean percentage reduction
cmass_percentage_reduction_PFT<-raster("/home/bianca/paper_mestrado_codes_results/caete_results_server/paper_mestrado_Amz_basin/5PFTs_application/results/cmass_percentage_reduction_lowprec_5PFTs.tif")
cmass_mean_reduction_PFT=cellStats(cmass_percentage_reduction_PFT, stat="mean")

cmass_percentage_reduction_PLS<-raster("/home/bianca/paper_mestrado_codes_results/caete_results_server/paper_mestrado_Amz_basin/3000PLS_application/results_lowprec_x_nclim/cmass_percentage_reduction_3000PLS.tif")
cmass_mean_reduction_PLS=cellStats(cmass_percentage_reduction_PLS,stat="mean")

npp_percentage_reduction_PFT<-raster("/home/bianca/paper_mestrado_codes_results/caete_results_server/paper_mestrado_Amz_basin/5PFTs_application/results/npp_percentage_reduction_lowprec_5PFTs.tif")
npp_mean_reduction_PFT=cellStats(npp_percentage_reduction_PFT, stat="mean")

npp_percentage_reduction_PLS<-raster("/home/bianca/paper_mestrado_codes_results/caete_results_server/paper_mestrado_Amz_basin/3000PLS_application/results_lowprec_x_nclim/npp_percentage_reduction_3000PLS.tif")
npp_mean_reduction_PLS=cellStats(npp_percentage_reduction_PLS,stat="mean")

gpp_percentage_reduction_PFT<-raster("/home/bianca/paper_mestrado_codes_results/caete_results_server/paper_mestrado_Amz_basin/5PFTs_application/results/photo_percentage_reduction_lowprec_5PFTs.tif")
gpp_mean_reduction_PFT=cellStats(gpp_percentage_reduction_PFT, stat="mean")

gpp_percentage_reduction_PLS<-raster("/home/bianca/paper_mestrado_codes_results/caete_results_server/paper_mestrado_Amz_basin/3000PLS_application/results_lowprec_x_nclim/photo_percentage_reduction_3000PLS.tif")
gpp_mean_reduction_PLS=cellStats(gpp_percentage_reduction_PLS, stat="mean")