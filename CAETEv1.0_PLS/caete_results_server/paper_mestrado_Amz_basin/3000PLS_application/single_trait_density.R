library(ggplot2)
library(gridExtra)

table_nclim=read.csv("/home/bianca/paper_mestrado_codes_results/CAETEv1.0_PLS/caete_results_server/paper_mestrado_Amz_basin/3000PLS_application/3000_meanruns_nclim.csv")
table_lprec=read.csv("/home/bianca/paper_mestrado_codes_results/CAETEv1.0_PLS/caete_results_server/paper_mestrado_Amz_basin/3000PLS_application/3000_meanruns_lowprec.csv")


table=rbind(table_nclim,table_lprec)

###Residence time traits###
tb_tleaf=table[c("clima","tleaf_cwm")]
p_tleaf=ggplot(tb_tleaf,aes(x=tb_tleaf$tleaf_cwm,color=tb_tleaf$clima,fill=tb_tleaf$clima))+geom_density(alpha=0.6,size=0.5)+xlim(0,9)
tleaf=p_tleaf+scale_fill_manual(values = c("midnightblue","coral"))+scale_color_manual(values = c("blue","coral3"))+labs(title = "",x="",y="")
tleaf2=tleaf+theme_bw()+theme(panel.background=element_blank(),axis.line = element_line(colour = "black",size=0),panel.border=element_rect(colour='black',size=0.5),panel.grid.major = element_blank(),panel.grid.minor = element_blank())
tleaf=tleaf2+theme(axis.text.x = element_text(size=0,colour = 'black',family = 'sans'),axis.text.y = element_text(size=8,colour='black',family='sans'),legend.position = 0)
tleaf+theme(axis.text.x = element_blank(),axis.ticks.x = element_blank())

tb_troot=table[c("clima","troot_cwm")]
p_troot=ggplot(tb_troot,aes(x=tb_troot$troot_cwm,color=tb_troot$clima,fill=tb_troot$clima))+geom_density(alpha=0.6,size=0.5)+xlim(0,9)
troot=p_troot+scale_fill_manual(values = c("midnightblue","coral"))+scale_color_manual(values = c("blue","coral3"))+labs(title = "", x="",y="")
troot2=troot+theme_bw()+theme(panel.background=element_blank(),axis.line = element_line(colour = "black",size=0),panel.border=element_rect(colour='black',size=0.5),panel.grid.major = element_blank(),panel.grid.minor = element_blank())
troot=troot2+theme(axis.text = element_text(size=8,colour = 'black',family = 'sans'),legend.position = 0)
troot

tb_twood=table[c("clima","twood_cwm")]
p_twood=ggplot(tb_twood,aes(x=tb_twood$twood_cwm,color=tb_twood$clima,fill=tb_twood$clima))+geom_density(alpha=0.6,size=0.5)+xlim(0,30)
twood=p_twood+scale_fill_manual(values = c("midnightblue","coral"))+scale_color_manual(values = c("blue","coral3"))+labs(title = "", x="",y="")
twood2=twood+theme_bw()+theme(panel.background=element_blank(),axis.line = element_line(colour = "black",size=0),panel.border=element_rect(colour='black',size=0.5),panel.grid.major = element_blank(),panel.grid.minor = element_blank())
twood=twood2+theme(axis.text = element_text(size=8,colour = 'black',family='sans'),legend.position = 0)
twood

##Allocation traits###
tb_aleaf=table[c("clima","aleaf_cwm")]
p_aleaf=ggplot(tb_aleaf,aes(x=tb_aleaf$aleaf_cwm,color=tb_aleaf$clima,fill=tb_aleaf$clima))+geom_density(alpha=0.6,size=0.5)+xlim(0,0.8)#+scale_y_continuous(limits=c(0, 60), breaks=seq(0, 60, 10))
aleaf=p_aleaf+scale_fill_manual(values = c("midnightblue","coral"))+scale_color_manual(values = c("blue","coral3"))+labs(title = "", x="",y="")
aleaf2=aleaf+theme_bw()+theme(panel.background=element_blank(),axis.line = element_line(colour = "black",size=0),panel.border=element_rect(colour='black',size=0.5),panel.grid.major = element_blank(),panel.grid.minor = element_blank())
aleaf=aleaf2+theme(axis.text = element_text(size=0,colour = 'black',family='sans'), axis.text.y = element_text(size=8,colour='black',family='sans'),legend.position = 0)
aleaf+theme(axis.text.x = element_blank(),axis.ticks.x = element_blank())

tb_aroot=table[c("clima","aroot_cwm")]
p_aroot=ggplot(tb_aroot,aes(x=tb_aroot$aroot_cwm,color=tb_aroot$clima,fill=tb_aroot$clima))+geom_density(alpha=0.6)+xlim(0,0.8)
aroot=p_aroot+scale_fill_manual(values = c("midnightblue","coral"))+scale_color_manual(values = c("blue","coral3"))+labs(title = "", x="",y="")
aroot2=aroot+theme_bw()+theme(panel.background=element_blank(),axis.line = element_line(colour = "black",size=0),panel.border=element_rect(colour='black',size=0.5),panel.grid.major = element_blank(),panel.grid.minor = element_blank())
aroot=aroot2+theme(axis.text = element_text(size=0,colour = 'black',family = 'sans'),axis.text.y = element_text(size=8,colour='black',family='sans'),legend.position = 0)
aroot+theme(axis.text.x = element_blank(),axis.ticks.x = element_blank())

tb_awood=table[c("clima","awood_cwm")]
p_awood=ggplot(tb_awood,aes(x=tb_awood$awood_cwm,color=tb_awood$clima,fill=tb_awood$clima))+geom_density(alpha=0.6,size=0.5)+xlim(0,0.8)
awood=p_awood+scale_fill_manual(values = c("midnightblue","coral"))+scale_color_manual(values = c("blue","coral3"))+labs(title = "", x="",y="")
awood2=awood+theme_bw()+theme(panel.background=element_blank(),axis.line = element_line(colour = "black",size=0),panel.border=element_rect(colour='black',size=0.5),panel.grid.major = element_blank(),panel.grid.minor = element_blank())
awood=awood2+theme(axis.text = element_text(size=8,colour = 'black',family = 'sans'),legend.position = 0)
awood

#combining graphs in 1 figure
figure=grid.arrange(aleaf,tleaf,aroot,troot,awood,twood,nrow=3,ncol=2)

#calculating mean e modal values
tleaf_nclim=tb_tleaf[tb_tleaf$clima=='nclim',]
dens_tleaf_nclim=density(tleaf_nclim$tleaf_cwm)
n=length(dens_tleaf_nclim$y)
dx_tleaf_nclim=mean(diff(dens_tleaf_nclim$x))
y.unit=sum(dens_tleaf_nclim$y)*dx_tleaf_nclim
dx_tleaf_nclim=dx_tleaf_nclim/y.unit
x.mean_tleaf_nclim=sum(dens_tleaf_nclim$y*dens_tleaf_nclim$x)*dx_tleaf_nclim
y.mean_tleaf_nclim=dens_tleaf_nclim$y[length(dens_tleaf_nclim$x[dens_tleaf_nclim$x < x.mean_tleaf_nclim])]
x.mode_tleaf_nclim <- dens_tleaf_nclim$x[i.mode <- which.max(dens_tleaf_nclim$y)]
y.mode_tleaf_nlcim <- dens_tleaf_nclim$y[i.mode]                  
y.cs_tleaf_nclim <- cumsum(dens_tleaf_nclim$y)               
x.med_tleaf_nclim <- dens_tleaf_nclim$x[i.med <- length(y.cs_tleaf_nclim[2*y.cs_tleaf_nclim <= y.cs_tleaf_nclim[n]])] 
y.med_tleaf_nclim <- dens_tleaf_nclim$y[i.med]

tleaf_lowprec=tb_tleaf[tb_tleaf$clima=='lowprec',]
dens_tleaf_lowprec=density(tleaf_lowprec$tleaf_cwm)
n=length(dens_tleaf_lowprec$y)
dx_tleaf_lowprec=mean(diff(dens_tleaf_lowprec$x))
y.unit=sum(dens_tleaf_lowprec$y)*dx_tleaf_lowprec
dx_tleaf_lowprec=dx_tleaf_lowprec/y.unit
x.mean_tleaf_lowprec=sum(dens_tleaf_lowprec$y*dens_tleaf_lowprec$x)*dx_tleaf_lowprec
y.mean_tleaf_lowprec=dens_tleaf_lowprec$y[length(dens_tleaf_lowprec$x[dens_tleaf_lowprec$x < x.mean_tleaf_lowprec])]
x.mode_tleaf_lowprec <- dens_tleaf_lowprec$x[i.mode <- which.max(dens_tleaf_lowprec$y)]
y.mode_tleaf_nlcim <- dens_tleaf_lowprec$y[i.mode]                  
y.cs_tleaf_lowprec <- cumsum(dens_tleaf_lowprec$y)               
x.med_tleaf_lowprec <- dens_tleaf_lowprec$x[i.med <- length(y.cs_tleaf_lowprec[2*y.cs_tleaf_lowprec <= y.cs_tleaf_lowprec[n]])] 
y.med_tleaf_lowprec <- dens_tleaf_lowprec$y[i.med]

troot_nclim=tb_troot[tb_troot$clima=='nclim',]
dens_troot_nclim=density(troot_nclim$troot_cwm)
n=length(dens_troot_nclim$y)
dx_troot_nclim=mean(diff(dens_troot_nclim$x))
y.unit=sum(dens_troot_nclim$y)*dx_troot_nclim
dx_troot_nclim=dx_troot_nclim/y.unit
x.mean_troot_nclim=sum(dens_troot_nclim$y*dens_troot_nclim$x)*dx_troot_nclim
y.mean_troot_nclim=dens_troot_nclim$y[length(dens_troot_nclim$x[dens_troot_nclim$x < x.mean_troot_nclim])]
x.mode_troot_nclim <- dens_troot_nclim$x[i.mode <- which.max(dens_troot_nclim$y)]
y.mode_troot_nlcim <- dens_troot_nclim$y[i.mode]                  
y.cs_troot_nclim <- cumsum(dens_troot_nclim$y)               
x.med_troot_nclim <- dens_troot_nclim$x[i.med <- length(y.cs_troot_nclim[2*y.cs_troot_nclim <= y.cs_troot_nclim[n]])] 
y.med_troot_nclim <- dens_troot_nclim$y[i.med]

troot_lowprec=tb_troot[tb_troot$clima=='lowprec',]
dens_troot_lowprec=density(troot_lowprec$troot_cwm)
n=length(dens_troot_lowprec$y)
dx_troot_lowprec=mean(diff(dens_troot_lowprec$x))
y.unit=sum(dens_troot_lowprec$y)*dx_troot_lowprec
dx_troot_lowprec=dx_troot_lowprec/y.unit
x.mean_troot_lowprec=sum(dens_troot_lowprec$y*dens_troot_lowprec$x)*dx_troot_lowprec
y.mean_troot_lowprec=dens_troot_lowprec$y[length(dens_troot_lowprec$x[dens_troot_lowprec$x < x.mean_troot_lowprec])]
x.mode_troot_lowprec <- dens_troot_lowprec$x[i.mode <- which.max(dens_troot_lowprec$y)]
y.mode_troot_nlcim <- dens_troot_lowprec$y[i.mode]                  
y.cs_troot_lowprec <- cumsum(dens_troot_lowprec$y)               
x.med_troot_lowprec <- dens_troot_lowprec$x[i.med <- length(y.cs_troot_lowprec[2*y.cs_troot_lowprec <= y.cs_troot_lowprec[n]])] 
y.med_troot_lowprec <- dens_troot_lowprec$y[i.med]

twood_nclim=tb_twood[tb_twood$clima=='nclim',]
dens_twood_nclim=density(twood_nclim$twood_cwm)
n=length(dens_twood_nclim$y)
dx_twood_nclim=mean(diff(dens_twood_nclim$x))
y.unit=sum(dens_twood_nclim$y)*dx_twood_nclim
dx_twood_nclim=dx_twood_nclim/y.unit
x.mean_twood_nclim=sum(dens_twood_nclim$y*dens_twood_nclim$x)*dx_twood_nclim
y.mean_twood_nclim=dens_twood_nclim$y[length(dens_twood_nclim$x[dens_twood_nclim$x < x.mean_twood_nclim])]
x.mode_twood_nclim <- dens_twood_nclim$x[i.mode <- which.max(dens_twood_nclim$y)]
y.mode_twood_nlcim <- dens_twood_nclim$y[i.mode]                  
y.cs_twood_nclim <- cumsum(dens_twood_nclim$y)               
x.med_twood_nclim <- dens_twood_nclim$x[i.med <- length(y.cs_twood_nclim[2*y.cs_twood_nclim <= y.cs_twood_nclim[n]])] 
y.med_twood_nclim <- dens_twood_nclim$y[i.med]

twood_lowprec=tb_twood[tb_twood$clima=='lowprec',]
dens_twood_lowprec=density(twood_lowprec$twood_cwm)
n=length(dens_twood_lowprec$y)
dx_twood_lowprec=mean(diff(dens_twood_lowprec$x))
y.unit=sum(dens_twood_lowprec$y)*dx_twood_lowprec
dx_twood_lowprec=dx_twood_lowprec/y.unit
x.mean_twood_lowprec=sum(dens_twood_lowprec$y*dens_twood_lowprec$x)*dx_twood_lowprec
y.mean_twood_lowprec=dens_twood_lowprec$y[length(dens_twood_lowprec$x[dens_twood_lowprec$x < x.mean_twood_lowprec])]
x.mode_twood_lowprec <- dens_twood_lowprec$x[i.mode <- which.max(dens_twood_lowprec$y)]
y.mode_twood_nlcim <- dens_twood_lowprec$y[i.mode]                  
y.cs_twood_lowprec <- cumsum(dens_twood_lowprec$y)               
x.med_twood_lowprec <- dens_twood_lowprec$x[i.med <- length(y.cs_twood_lowprec[2*y.cs_twood_lowprec <= y.cs_twood_lowprec[n]])] 
y.med_twood_lowprec <- dens_twood_lowprec$y[i.med]

aleaf_nclim=tb_aleaf[tb_aleaf$clima=='nclim',]
dens_aleaf_nclim=density(aleaf_nclim$aleaf_cwm)
n=length(dens_aleaf_nclim$y)
dx_aleaf_nclim=mean(diff(dens_aleaf_nclim$x))
y.unit=sum(dens_aleaf_nclim$y)*dx_aleaf_nclim
dx_aleaf_nclim=dx_aleaf_nclim/y.unit
x.mean_aleaf_nclim=sum(dens_aleaf_nclim$y*dens_aleaf_nclim$x)*dx_aleaf_nclim
y.mean_aleaf_nclim=dens_aleaf_nclim$y[length(dens_aleaf_nclim$x[dens_aleaf_nclim$x < x.mean_aleaf_nclim])]
x.mode_aleaf_nclim <- dens_aleaf_nclim$x[i.mode <- which.max(dens_aleaf_nclim$y)]
y.mode_aleaf_nlcim <- dens_aleaf_nclim$y[i.mode]                  
y.cs_aleaf_nclim <- cumsum(dens_aleaf_nclim$y)               
x.med_aleaf_nclim <- dens_aleaf_nclim$x[i.med <- length(y.cs_aleaf_nclim[2*y.cs_aleaf_nclim <= y.cs_aleaf_nclim[n]])] 
y.med_aleaf_nclim <- dens_aleaf_nclim$y[i.med]

aleaf_lowprec=tb_aleaf[tb_aleaf$clima=='lowprec',]
dens_aleaf_lowprec=density(aleaf_lowprec$aleaf_cwm)
n=length(dens_aleaf_lowprec$y)
dx_aleaf_lowprec=mean(diff(dens_aleaf_lowprec$x))
y.unit=sum(dens_aleaf_lowprec$y)*dx_aleaf_lowprec
dx_aleaf_lowprec=dx_aleaf_lowprec/y.unit
x.mean_aleaf_lowprec=sum(dens_aleaf_lowprec$y*dens_aleaf_lowprec$x)*dx_aleaf_lowprec
y.mean_aleaf_lowprec=dens_aleaf_lowprec$y[length(dens_aleaf_lowprec$x[dens_aleaf_lowprec$x < x.mean_aleaf_lowprec])]
x.mode_aleaf_lowprec <- dens_aleaf_lowprec$x[i.mode <- which.max(dens_aleaf_lowprec$y)]
y.mode_aleaf_nlcim <- dens_aleaf_lowprec$y[i.mode]                  
y.cs_aleaf_lowprec <- cumsum(dens_aleaf_lowprec$y)               
x.med_aleaf_lowprec <- dens_aleaf_lowprec$x[i.med <- length(y.cs_aleaf_lowprec[2*y.cs_aleaf_lowprec <= y.cs_aleaf_lowprec[n]])] 
y.med_aleaf_lowprec <- dens_aleaf_lowprec$y[i.med]

aroot_nclim=tb_aroot[tb_aroot$clima=='nclim',]
dens_aroot_nclim=density(aroot_nclim$aroot_cwm)
n=length(dens_aroot_nclim$y)
dx_aroot_nclim=mean(diff(dens_aroot_nclim$x))
y.unit=sum(dens_aroot_nclim$y)*dx_aroot_nclim
dx_aroot_nclim=dx_aroot_nclim/y.unit
x.mean_aroot_nclim=sum(dens_aroot_nclim$y*dens_aroot_nclim$x)*dx_aroot_nclim
y.mean_aroot_nclim=dens_aroot_nclim$y[length(dens_aroot_nclim$x[dens_aroot_nclim$x < x.mean_aroot_nclim])]
x.mode_aroot_nclim <- dens_aroot_nclim$x[i.mode <- which.max(dens_aroot_nclim$y)]
y.mode_aroot_nlcim <- dens_aroot_nclim$y[i.mode]                  
y.cs_aroot_nclim <- cumsum(dens_aroot_nclim$y)               
x.med_aroot_nclim <- dens_aroot_nclim$x[i.med <- length(y.cs_aroot_nclim[2*y.cs_aroot_nclim <= y.cs_aroot_nclim[n]])] 
y.med_aroot_nclim <- dens_aroot_nclim$y[i.med]

aroot_lowprec=tb_aroot[tb_aroot$clima=='lowprec',]
dens_aroot_lowprec=density(aroot_lowprec$aroot_cwm)
n=length(dens_aroot_lowprec$y)
dx_aroot_lowprec=mean(diff(dens_aroot_lowprec$x))
y.unit=sum(dens_aroot_lowprec$y)*dx_aroot_lowprec
dx_aroot_lowprec=dx_aroot_lowprec/y.unit
x.mean_aroot_lowprec=sum(dens_aroot_lowprec$y*dens_aroot_lowprec$x)*dx_aroot_lowprec
y.mean_aroot_lowprec=dens_aroot_lowprec$y[length(dens_aroot_lowprec$x[dens_aroot_lowprec$x < x.mean_aroot_lowprec])]
x.mode_aroot_lowprec <- dens_aroot_lowprec$x[i.mode <- which.max(dens_aroot_lowprec$y)]
y.mode_aroot_nlcim <- dens_aroot_lowprec$y[i.mode]                  
y.cs_aroot_lowprec <- cumsum(dens_aroot_lowprec$y)               
x.med_aroot_lowprec <- dens_aroot_lowprec$x[i.med <- length(y.cs_aroot_lowprec[2*y.cs_aroot_lowprec <= y.cs_aroot_lowprec[n]])] 
y.med_aroot_lowprec <- dens_aroot_lowprec$y[i.med]

awood_nclim=tb_awood[tb_awood$clima=='nclim',]
dens_awood_nclim=density(awood_nclim$awood_cwm)
n=length(dens_awood_nclim$y)
dx_awood_nclim=mean(diff(dens_awood_nclim$x))
y.unit=sum(dens_awood_nclim$y)*dx_awood_nclim
dx_awood_nclim=dx_awood_nclim/y.unit
x.mean_awood_nclim=sum(dens_awood_nclim$y*dens_awood_nclim$x)*dx_awood_nclim
y.mean_awood_nclim=dens_awood_nclim$y[length(dens_awood_nclim$x[dens_awood_nclim$x < x.mean_awood_nclim])]
x.mode_awood_nclim <- dens_awood_nclim$x[i.mode <- which.max(dens_awood_nclim$y)]
y.mode_awood_nlcim <- dens_awood_nclim$y[i.mode]                  
y.cs_awood_nclim <- cumsum(dens_awood_nclim$y)               
x.med_awood_nclim <- dens_awood_nclim$x[i.med <- length(y.cs_awood_nclim[2*y.cs_awood_nclim <= y.cs_awood_nclim[n]])] 
y.med_awood_nclim <- dens_awood_nclim$y[i.med]

awood_lowprec=tb_awood[tb_awood$clima=='lowprec',]
dens_awood_lowprec=density(awood_lowprec$awood_cwm)
n=length(dens_awood_lowprec$y)
dx_awood_lowprec=mean(diff(dens_awood_lowprec$x))
y.unit=sum(dens_awood_lowprec$y)*dx_awood_lowprec
dx_awood_lowprec=dx_awood_lowprec/y.unit
x.mean_awood_lowprec=sum(dens_awood_lowprec$y*dens_awood_lowprec$x)*dx_awood_lowprec
y.mean_awood_lowprec=dens_awood_lowprec$y[length(dens_awood_lowprec$x[dens_awood_lowprec$x < x.mean_awood_lowprec])]
x.mode_awood_lowprec <- dens_awood_lowprec$x[i.mode <- which.max(dens_awood_lowprec$y)]
y.mode_awood_nlcim <- dens_awood_lowprec$y[i.mode]                  
y.cs_awood_lowprec <- cumsum(dens_awood_lowprec$y)               
x.med_awood_lowprec <- dens_awood_lowprec$x[i.med <- length(y.cs_awood_lowprec[2*y.cs_awood_lowprec <= y.cs_awood_lowprec[n]])] 
y.med_awood_lowprec <- dens_awood_lowprec$y[i.med]
