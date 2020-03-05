library(raster)

pft=raster("/home/bianca/paper_mestrado_codes_results/caete_results_server/paper_mestrado_Amz_basin/5PFTs_application/results/cmass_percentage_reduction_lowprec_5PFTs.tif")
pls=raster("/home/bianca/paper_mestrado_codes_results/caete_results_server/paper_mestrado_Amz_basin/3000PLS_application/results_lowprec_x_nclim/cmass_percentage_reduction_3000PLS.tif")

mean_pft=cellStats(pft, stat="mean")

mean_pls=cellStats(pls,stat="mean")
