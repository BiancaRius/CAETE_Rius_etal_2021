library(ggplot2)


gpp_plots_data=read.csv("/home/bianca/paper_mestrado_codes_results/caete_results_server/paper_mestrado_Amz_basin/GPP_benchmark/plots_GPP_reference.csv")

PFT5_data=read.csv("/home/bianca/paper_mestrado_codes_results/caete_results_server/paper_mestrado_Amz_basin/GPP_benchmark/points_plots_gpp_PFT.csv")

PLS3000_data=read.csv("/home/bianca/paper_mestrado_codes_results/caete_results_server/paper_mestrado_Amz_basin/GPP_benchmark/points_plots_gpp_PLS.csv")

ref=cbind(gpp_plots_data,PFT5_data,PLS3000_data)

plot=ggplot(mod, aes(x=mod$,y=bac$value5))+geom_smooth(method="lm",colour="darkgrey",size=0.3) #creates a 1:1 line

plot2=plot+geom_point(aes(x=bac$value_bac, y=bac$value5),shape=1,color="blue",alpha=.4)+geom_point(aes(x=bac$value_bac, y=bac$value3000),shape=1,color="green",alpha=.4)+theme_minimal()
plot2+labs(x="Baccini et al. 2012", y= "Model approach")

reg_pls=lm(ref$pls~ref$GPP)
summary(reg_pls)
reg_pft=lm(ref$pft~ref$GPP)
summary(reg_pft)
