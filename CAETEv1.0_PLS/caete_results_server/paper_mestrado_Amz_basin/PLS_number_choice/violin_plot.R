library(vioplot)

table=read.csv("/home/bianca/paper_mestrado_codes_results/caete_results_server/paper_mestrado_Amz_basin/PLS_number_choice/all_pls_mruns.csv")

table_all=read.csv("/home/bianca/paper_mestrado_codes_results/caete_results_server/paper_mestrado_Amz_basin/PLS_number_choice/all_pls_all_runs.csv")

x1=table$npp[table$PLS=="50PLS"]
x2=table$npp[table$PLS=="100PLS"]
x3=table$npp[table$PLS=="200PLS"]
x4=table$npp[table$PLS=="500PLS"]
x5=table$npp[table$PLS=="1000PLS"]
x6=table$npp[table$PLS=="3000PLS"]

x7=table$cmass[table$PLS=="50PLS"]
x8=table$cmass[table$PLS=="100PLS"]
x9=table$cmass[table$PLS=="200PLS"]
x10=table$cmass[table$PLS=="500PLS"]
x11=table$cmass[table$PLS=="1000PLS"]
x12=table$cmass[table$PLS=="3000PLS"]

PLS_50=table_all[table_all$PLS==50,]
PLS_3000=table_all[table_all$PLS==3000,]

a1=PLS_50$cmass[PLS_50$run==1]
a2=PLS_50$cmass[PLS_50$run==2]
a3=PLS_50$cmass[PLS_50$run==3]
a4=PLS_50$cmass[PLS_50$run==4]
a5=PLS_50$cmass[PLS_50$run==5]
a6=PLS_50$cmass[PLS_50$run==6]
a7=PLS_50$cmass[PLS_50$run==7]
a8=PLS_50$cmass[PLS_50$run==8]
a9=PLS_50$cmass[PLS_50$run==9]
a10=PLS_50$cmass[PLS_50$run==10]

b1=PLS_3000$cmass[PLS_3000$run==1]
b2=PLS_3000$cmass[PLS_3000$run==2]
b3=PLS_3000$cmass[PLS_3000$run==3]
b4=PLS_3000$cmass[PLS_3000$run==4]
b5=PLS_3000$cmass[PLS_3000$run==5]
b6=PLS_3000$cmass[PLS_3000$run==6]
b7=PLS_3000$cmass[PLS_3000$run==7]
b8=PLS_3000$cmass[PLS_3000$run==8]
b9=PLS_3000$cmass[PLS_3000$run==9]
b10=PLS_3000$cmass[PLS_3000$run==10]
