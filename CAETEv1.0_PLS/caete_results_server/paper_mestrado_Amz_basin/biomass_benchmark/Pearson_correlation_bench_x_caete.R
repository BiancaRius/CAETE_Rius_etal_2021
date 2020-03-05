require(raster)

PLS= raster(file.path('/home/bianca/paper_mestrado_codes_results/caete_results_server/paper_mestrado_Amz_basin/biomass_benchmark/clipped_maps_for_correlation/agb_3000PLS.tif'))
PFT= raster(file.path('/home/bianca/paper_mestrado_codes_results/caete_results_server/paper_mestrado_Amz_basin/biomass_benchmark/clipped_maps_for_correlation/PFT.tif'))
BAC= raster(file.path('/home/bianca/paper_mestrado_codes_results/caete_results_server/paper_mestrado_Amz_basin/biomass_benchmark/clipped_maps_for_correlation/Baccini.tif'))
SAA= raster(file.path('/home/bianca/paper_mestrado_codes_results/caete_results_server/paper_mestrado_Amz_basin/biomass_benchmark/clipped_maps_for_correlation/Saatchi.tif'))

Bac_PFT=stack(BAC,PFT)

Bac_PLS=stack(BAC,PLS)

Saa_PFT=stack(SAA,PFT)

Saa_PLS=stack(SAA,PLS)

#Calculates the Pearson correlation (by default) between the two maps
Bac_PFT_cor=cor(values(Bac_PFT)[,1],
                values(Bac_PFT)[,2],
                use = "na.or.complete") #eq to 0.4745607

Bac_PLS_cor=cor(values(Bac_PLS)[,1],
                values(Bac_PLS)[,2],
                use = "na.or.complete") #eq to 0.5672723

Saa_PFT_cor=cor(values(Saa_PFT)[,1],
                values(Saa_PFT)[,2],
                use = "na.or.complete") #eq to 0.4637946

Saa_PLS_cor=cor(values(Saa_PLS)[,1],
                values(Saa_PLS)[,2],
                use = "na.or.complete") #eq to 4967487

#spatial pearson correlation - for explanations: https://cran.r-project.org/web/packages/spatialEco/spatialEco.pdf
x=BAC
y=PFT
r.cor=rasterCorrelation(x,y,s=5,type='pearson')
plot(r.cor)
