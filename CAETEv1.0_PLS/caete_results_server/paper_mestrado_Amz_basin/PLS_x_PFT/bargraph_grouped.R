data=read.csv('/home/bianca/paper_mestrado_codes_results/caete_results_server/paper_mestrado_Amz_basin/PLS_x_PFT/table_percentage_reduction.csv')

bar=ggplot(data, aes(fill=data$approach, y=data$reduction, x=data$variable))+geom_bar(position='dodge', stat='identity')+scale_fill_manual(values=c('palegreen3','skyblue3'))