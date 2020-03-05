refence_agb=read.csv("/home/bianca/paper_mestrado_codes_results/caete_results_server/paper_mestrado_Amz_basin/biomass_benchmark/reference_plot_agb.csv")

refence_tb=read.csv("/home/bianca/paper_mestrado_codes_results/caete_results_server/paper_mestrado_Amz_basin/biomass_benchmark/reference_plot_tb.csv")

pft_agb=read.csv("/home/bianca/paper_mestrado_codes_results/caete_results_server/paper_mestrado_Amz_basin/biomass_benchmark/points_plots_agb_PFT.csv")
pft_tb=read.csv("/home/bianca/paper_mestrado_codes_results/caete_results_server/paper_mestrado_Amz_basin/biomass_benchmark/points_plots_tb_PFT.csv")

pls_agb=read.csv("/home/bianca/paper_mestrado_codes_results/caete_results_server/paper_mestrado_Amz_basin/biomass_benchmark/points_plots_agb_PLS.csv")
pls_tb=read.csv("/home/bianca/paper_mestrado_codes_results/caete_results_server/paper_mestrado_Amz_basin/biomass_benchmark/points_plots_tb_PLS.csv")




reg_pls_agb=lm(pls_agb$abovegroun~refence_agb$Biomass..kgC.m2.)
summary(reg_pls_agb)
reg_pls_tb=lm(pls_tb$cmass_3000~refence_tb$Biomass..kgC.m2.)
summary(reg_pls_tb)

reg_pft_agb=lm(pft_agb$pft~refence_agb$Biomass..kgC.m2.)
summary(reg_pft_agb)
reg_pft_tb=lm(pft_tb$total_cmas~refence_tb$Biomass..kgC.m2.)
summary(reg_pft_tb)