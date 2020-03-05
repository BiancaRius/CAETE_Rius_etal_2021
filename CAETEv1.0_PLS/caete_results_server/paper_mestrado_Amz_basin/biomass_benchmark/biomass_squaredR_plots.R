refence_agb2=read.csv("/home/bianca/paper_mestrado_codes_results/caete_results_server/paper_mestrado_Amz_basin/biomass_benchmark/teste/ref_agb.csv")
refence_tb2=read.csv("/home/bianca/paper_mestrado_codes_results/caete_results_server/paper_mestrado_Amz_basin/biomass_benchmark/teste/ref_tb.csv")


pls=read.csv("/home/bianca/paper_mestrado_codes_results/caete_results_server/paper_mestrado_Amz_basin/biomass_benchmark/teste/agb_pls.csv")
pft=read.csv("/home/bianca/paper_mestrado_codes_results/caete_results_server/paper_mestrado_Amz_basin/biomass_benchmark/teste/agb_pft.csv")

pls_tb2=read.csv("/home/bianca/paper_mestrado_codes_results/caete_results_server/paper_mestrado_Amz_basin/biomass_benchmark/teste/tb_pls.csv")
pft_tb2=read.csv("/home/bianca/paper_mestrado_codes_results/caete_results_server/paper_mestrado_Amz_basin/biomass_benchmark/teste/tb_pft.csv")


lm_pls=lm(pls$abovegroun~refence_agb2$Biomass)
summary(lm_pls)

lm_pft=lm(pft$abovegroun~refence_agb2$Biomass)
summary(lm_pft)

lm_plstb=lm(pls_tb2$cmass_3000~refence_tb2$Biomass)
summary(lm_plstb)

lm_pfttb=lm(pft_tb2$total_cmas~refence_tb2$Biomass)
summary(lm_pfttb)