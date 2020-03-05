tb_50=read.csv('/home/bianca/paper_mestrado_codes_results/caete_results_server/paper_mestrado_Amz_basin/50PLS/50_nclimate/out50_nclim.csv')
tb_100=read.csv('/home/bianca/paper_mestrado_codes_results/caete_results_server/paper_mestrado_Amz_basin/100PLS/100_nclimate/out100_nclim.csv')
tb_200=read.csv('/home/bianca/paper_mestrado_codes_results/caete_results_server/paper_mestrado_Amz_basin/200PLS/200_nclimate/out200_nclim.csv')
tb_500=read.csv('/home/bianca/paper_mestrado_codes_results/caete_results_server/paper_mestrado_Amz_basin/500PLS/500_nclimate/out500_nclim.csv')
tb_1000=read.csv('/home/bianca/paper_mestrado_codes_results/caete_results_server/paper_mestrado_Amz_basin/1000PLS/1000_nclimate/out1000_nclim.csv')
tb_3000=read.csv('/home/bianca/paper_mestrado_codes_results/caete_results_server/paper_mestrado_Amz_basin/3000PLS/3000_nclimate/out3000_nclim.csv')


df=rbind(tb_50,tb_100,tb_200,tb_500,tb_1000,tb_3000)

write.csv(df, file="/home/bianca/paper_mestrado_codes_results/caete_results_server/paper_mestrado_Amz_basin/PLS_number_choice/all_pls_all_runs.csv")
