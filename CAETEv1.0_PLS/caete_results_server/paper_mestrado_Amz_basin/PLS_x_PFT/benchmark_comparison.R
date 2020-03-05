library(ggplot2)

#For comparison with Baccini et al (2012) benchmark
Baccini_data=read.csv("/home/bianca/paper_mestrado_codes_results/caete_results_server/paper_mestrado_Amz_basin/biomass_benchmark/baccini_table_points.csv")
Saatchi_data=read.csv("/home/bianca/paper_mestrado_codes_results/caete_results_server/paper_mestrado_Amz_basin/biomass_benchmark/saatchi_table_points.csv")

PFT5_data=read.csv("/home/bianca/paper_mestrado_codes_results/caete_results_server/paper_mestrado_Amz_basin/biomass_benchmark/5PFTs_table_points.csv")

PLS3000_data=read.csv("/home/bianca/paper_mestrado_codes_results/caete_results_server/paper_mestrado_Amz_basin/biomass_benchmark/3000PLS_table_points.csv")

bac=cbind(Baccini_data,PFT5_data,PLS3000_data)
saat=cbind(Saatchi_data,PFT5_data,PLS3000_data)

write.csv(bac,"/home/bianca/paper_mestrado_codes_results/caete_results_server/paper_mestrado_Amz_basin/biomass_benchmark/benchmark_baccini_5pfts_3000pls.csv")
write.csv(saat,"/home/bianca/paper_mestrado_codes_results/caete_results_server/paper_mestrado_Amz_basin/biomass_benchmark/benchmark_saatchi_5pfts_3000pls.csv")

plot=ggplot(bac, aes(x=bac$value5,y=bac$value5))+geom_smooth(method="lm",colour="darkgrey",size=0.3) #creates a 1:1 line

plot2=plot+geom_point(aes(x=bac$value_bac, y=bac$value5),shape=1,color="blue",alpha=.4)+geom_point(aes(x=bac$value_bac, y=bac$value3000),shape=1,color="green",alpha=.4)+theme_minimal()
plot2+labs(x="Baccini et al. 2012", y= "Model approach")

reg_pls=lm(bac$value3000~bac$value_bac)
summary(reg_pls)
reg_pft=lm(bac$value5~bac$value_bac)
summary(reg_pft)

#For comparison with Saatchi et al (2011) benchmark
Saatchi_data=read.csv("/home/bianca/paper_mestrado_codes_results/caete_results_server/paper_mestrado_Amz_basin/biomass_benchmark/saatchi_table_points.csv")

saat=cbind(Saatchi_data,PFT5_data,PLS3000_data)

plot_saat=ggplot(saat, aes(x=saat$value5,y=saat$value5))+geom_smooth(method="lm",colour="darkgrey",size=0.3) #creates a 1:1 line
plot2_saat=plot_saat+geom_point(aes(x=saat$value_saat, y=saat$value5),shape=1,color="blue",alpha=.4)+geom_point(aes(x=saat$value_saat, y=saat$value3000),shape=1,color="green",alpha=.4)+theme_minimal()

reg_pls_saat=lm(saat$value3000~saat$value_saat)
summary(reg_pls_saat)
reg_pft_saat=lm(saat$value5~saat$value_saat)
summary(reg_pft_saat)
