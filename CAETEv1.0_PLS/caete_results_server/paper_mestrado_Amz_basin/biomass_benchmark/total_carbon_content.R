library(raster)
#calculates the total aboveground carbon stock for amazon basin 
agb_kg_PFT <-raster("/home/bianca/paper_mestrado_codes_results/caete_results_server/paper_mestrado_Amz_basin/5PFTs/aboveground_biomass_5PFTs_nclim_cellarea.tif")

agb_kg_PLS<-raster("/home/bianca/paper_mestrado_codes_results/caete_results_server/paper_mestrado_Amz_basin/3000PLS/aboveground_biomass_3000PLS_clipped_cellarea.tif")

agb_kg_Baccini<-raster("/home/bianca/paper_mestrado_codes_results/caete_results_server/paper_mestrado_Amz_basin/biomass_benchmark/baccinni_carbon_content(multiplied_0475)_cellarea.tif")

agb_kg_Saatchi<-raster("/home/bianca/paper_mestrado_codes_results/caete_results_server/paper_mestrado_Amz_basin/biomass_benchmark/saatchi_carbon_content(multiplied_0475)_cellarea.tif")

PFT_sum=cellStats(agb_kg_PFT, stat="sum")
total_carbon_PFT=PFT_sum*(10^-12) # equal to 94.37505
total_carbon_PFT


PLS_sum=cellStats(agb_kg_PLS, stat="sum")
total_carbon_PLS=PLS_sum*(10^-12) # equal to 81.2517

Bac_sum=cellStats(agb_kg_Baccini, stat="sum")
total_carbon_Bac=Bac_sum*(10^-12) # equal to 80.2351

Saa_sum=cellStats(agb_kg_Saatchi, stat="sum")
total_carbon_Saa=Saa_sum*(10^-12) # equal to 71.66862
