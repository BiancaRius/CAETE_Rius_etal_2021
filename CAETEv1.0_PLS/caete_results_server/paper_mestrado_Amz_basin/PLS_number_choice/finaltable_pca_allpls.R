df_50=read.csv("/home/bianca/paper_mestrado_codes_results/caete_results_server/paper_mestrado_Amz_basin/50PLS/50_meanruns_nclim.csv")
df_100=read.csv("/home/bianca/paper_mestrado_codes_results/caete_results_server/paper_mestrado_Amz_basin/100PLS/100_meanruns_nclim.csv")
df_200=read.csv("/home/bianca/paper_mestrado_codes_results/caete_results_server/paper_mestrado_Amz_basin/200PLS/200_meanruns_nclim.csv")
df_500=read.csv("/home/bianca/paper_mestrado_codes_results/caete_results_server/paper_mestrado_Amz_basin/500PLS/500_meanruns_nclim.csv")
df_1000=read.csv("/home/bianca/paper_mestrado_codes_results/caete_results_server/paper_mestrado_Amz_basin/1000PLS/1000_meanruns_nclim.csv")
df_3000=read.csv("/home/bianca/paper_mestrado_codes_results/caete_results_server/paper_mestrado_Amz_basin/3000PLS/3000_meanruns_nclim.csv")

df=rbind(df_50,df_100,df_200,df_500,df_1000,df_3000)

write.csv(df, file="/home/bianca/paper_mestrado_codes_results/caete_results_server/paper_mestrado_Amz_basin/PLS_number_choice/all_pls_mruns.csv")
df2=read.csv("/home/bianca/paper_mestrado_codes_results/caete_results_server/paper_mestrado_Amz_basin/PLS_number_choice/all_pls_mruns.csv")

df_traits=df2[,19:24]
pca=prcomp(df_traits, scale = TRUE)
biplot(pca)
summary(pca)
pca$rotation
pca$center
pca$scale
new_variables<-pca$x
df_new_variables<-as.data.frame(new_variables)
colnames(df_new_variables)
final_table<-bind_cols(df2,df_new_variables)
write.csv(final_table, file = "/home/bianca/paper_mestrado_codes_results/caete_results_server/paper_mestrado_Amz_basin/PLS_number_choice/allpls_meanruns_pcs.csv")
