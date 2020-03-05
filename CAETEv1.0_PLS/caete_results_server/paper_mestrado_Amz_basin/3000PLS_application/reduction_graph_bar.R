tb=read.csv('/home/bianca/paper_mestrado_codes_results/caete_results_server/paper_mestrado_Amz_basin/3000PLS_application/results_lowprec_x_nclim/table_percentage_reduction.csv')

graph=ggplot(tb,aes(x=variable, y=reduction2),fill=variable)+geom_bar(stat='identity')+ylab('Percentage of reduction')+xlab('Biogeochemical variable')