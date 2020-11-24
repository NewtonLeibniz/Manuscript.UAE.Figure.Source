#########UAE data
#figure a
##########################
library(ggplot2)
library(ggthemes)
dataa = read.table('figure5A.UAE.list',header = TRUE,sep = "\t")

UAEa=ggplot(dataa, aes(x=Trans,y=Freqs,color=Trans))+geom_point()+geom_jitter()+theme_few()+guides(color=FALSE)+
  theme(panel.background = element_rect(fill = NA),legend.title=element_blank(),
        panel.grid.major.x = element_blank(),panel.grid.major.y = element_line( size=.1, color="black" ),
        axis.text.x=element_text(size=18),axis.text.y=element_text(size=18),
        axis.title.x=element_text(size=22),axis.title.y=element_text(size=22),
        panel.border = element_blank())+
  labs(y = 'UAE (n=896)\nSNV of  frequency',x='')+scale_colour_manual(name='Trans', 
                      labels=c('AC','AG','AT','CA','CG','CT','GA','GC','GT','TA','TC','TG'), 
                      values = c("#313695","#436FB1","#6BA2CB","#9BCDE2",
                                 "#CCE9F2","#F0F9D8","#FEF0A9","#FDCD7E",
                                 "#FA9C58","#EE613D","#D22B26","#A50026"))
#figure b
#######################################################
library(ggplot2)
library(ggthemes)
library(RColorBrewer)
datab = read.table('figure5A.UAE.list',header = TRUE,sep = "\t")
UAEb=ggplot(datab, aes(x=Trans,y=Counts,fill=Trans))+geom_bar(stat="identity",width=0.5,position='dodge')+ labs(y = '# of sample') +
  theme_few()+
  theme(panel.background = element_rect(fill = NA),legend.title=element_blank(),
        legend.position = "none",legend.text=element_blank(),
        panel.grid.major.x = element_blank(),panel.grid.major.y = element_line( size=.1, color="black" ),
        axis.text.x=element_text(size=18,angle=0),axis.text.y=element_text(size=18),
        axis.title.x=element_text(size=22),axis.title.y=element_text(size=22),
        panel.border = element_blank())+
  labs(y = 'SNV count',x='')+
  scale_fill_manual(name='Types', 
                    labels=c('AC','AG','AT','CA','CG','CT','GA','GC','GT','TA','TC','TG'), 
                    values = c("#313695","#436FB1","#6BA2CB","#9BCDE2",
                               "#CCE9F2","#F0F9D8","#FEF0A9","#FDCD7E",
                               "#FA9C58","#EE613D","#D22B26","#A50026"))


#######################################################
#figure c
#######################################################
library(ggplot2)
library(ggthemes)
library(RColorBrewer)
datac = read.table('figure5A.UAE.list',header = TRUE,sep = "\t")
UAEc=ggplot(datac, aes(x=Trans,y=Counts,fill=Trans))+geom_bar(stat="identity",width=0.5,position='dodge')+ labs(y = '# of sample') +
  theme_few()+
  theme(panel.background = element_rect(fill = NA),legend.title=element_blank(),
        legend.position = "none",legend.text=element_blank(),
        panel.grid.major.x = element_blank(),panel.grid.major.y = element_line( size=.1, color="black" ),
        axis.text.x=element_text(size=18,angle=0),axis.text.y=element_text(size=18),
        axis.title.x=element_text(size=22),axis.title.y=element_text(size=22),
        panel.border = element_blank())+
  labs(y = 'SNV count',x='')+
  scale_fill_manual(name='Types',
                    labels=c('AC','AG','AT','CA','CG','CT','GA','GC','GT','TA','TC','TG'), 
                    values = c("#313695","#436FB1","#6BA2CB","#9BCDE2",
                               "#CCE9F2","#F0F9D8","#FEF0A9","#FDCD7E",
                               "#FA9C58","#EE613D","#D22B26","#A50026"))

#########GISAID data
#figure a
##########################
library(ggplot2)
library(ggthemes)
dataa = read.table('figure5A.GISAID.list',header = TRUE,sep = "\t")

GISAIDa=ggplot(dataa, aes(x=Trans,y=Freqs,color=Trans))+geom_point()+geom_jitter()+theme_few()+guides(color=FALSE)+
  theme(panel.background = element_rect(fill = NA),legend.title=element_blank(),
        panel.grid.major.x = element_blank(),panel.grid.major.y = element_line( size=.1, color="black" ),
        axis.text.x=element_text(size=18),axis.text.y=element_text(size=18),
        axis.title.x=element_text(size=22),axis.title.y=element_text(size=22),
        panel.border = element_blank())+
  labs(y = 'GISAID (n=23,164)\nSNV of  frequency',x='')+scale_colour_manual(name='Trans',
                                                         labels=c('AC','AG','AT','CA','CG','CT','GA','GC','GT','TA','TC','TG'), 
                                                         values = c("#313695","#436FB1","#6BA2CB","#9BCDE2",
                                                                    "#CCE9F2","#F0F9D8","#FEF0A9","#FDCD7E",
                                                                    "#FA9C58","#EE613D","#D22B26","#A50026"))
#figure b
#######################################################
library(ggplot2)
library(ggthemes)
library(RColorBrewer)
datab = read.table('figure5A.GISAID.list',header = TRUE,sep = "\t")
GISAIDb=ggplot(datab, aes(x=Trans,y=Counts,fill=Trans))+geom_bar(stat="identity",width=0.5,position='dodge')+ labs(y = '# of sample') +
  theme_few()+
  theme(panel.background = element_rect(fill = NA),legend.title=element_blank(),
        legend.position = "none",legend.text=element_blank(),
        panel.grid.major.x = element_blank(),panel.grid.major.y = element_line( size=.1, color="black" ),
        axis.text.x=element_text(size=18,angle=0),axis.text.y=element_text(size=18),
        axis.title.x=element_text(size=22),axis.title.y=element_text(size=22),
        panel.border = element_blank())+
  labs(y = 'SNV count',x='')+
  scale_fill_manual(name='Types', 
                    labels=c('AC','AG','AT','CA','CG','CT','GA','GC','GT','TA','TC','TG'), 
                    values = c("#313695","#436FB1","#6BA2CB","#9BCDE2",
                               "#CCE9F2","#F0F9D8","#FEF0A9","#FDCD7E",
                               "#FA9C58","#EE613D","#D22B26","#A50026"))


#######################################################
#figure c
#######################################################
library(ggplot2)
library(ggthemes)
library(RColorBrewer)
datac = read.table('figure5A.GISAID.list',header = TRUE,sep = "\t")
GISAIDc=ggplot(datac, aes(x=Trans,y=Counts,fill=Trans))+geom_bar(stat="identity",width=0.5,position='dodge')+ labs(y = '# of sample') +
  theme_few()+
  theme(panel.background = element_rect(fill = NA),legend.title=element_blank(),
        legend.position = "none",legend.text=element_blank(),
        panel.grid.major.x = element_blank(),panel.grid.major.y = element_line( size=.1, color="black" ),
        axis.text.x=element_text(size=18,angle=0),axis.text.y=element_text(size=18),
        axis.title.x=element_text(size=22),axis.title.y=element_text(size=22),
        panel.border = element_blank())+
  labs(y = 'SNV count',x='')+
  scale_fill_manual(name='Types', 
                    labels=c('AC','AG','AT','CA','CG','CT','GA','GC','GT','TA','TC','TG'),
                    values = c("#313695","#436FB1","#6BA2CB","#9BCDE2",
                               "#CCE9F2","#F0F9D8","#FEF0A9","#FDCD7E",
                               "#FA9C58","#EE613D","#D22B26","#A50026"))

#########Spain data
#figure a
##########################
library(ggplot2)
library(ggthemes)
dataa = read.table('figure5A.Spain.list',header = TRUE,sep = "\t")

Spaina=ggplot(dataa, aes(x=Trans,y=Freqs,color=Trans))+geom_point()+geom_jitter()+theme_few()+guides(color=FALSE)+
  theme(panel.background = element_rect(fill = NA),legend.title=element_blank(),
        panel.grid.major.x = element_blank(),panel.grid.major.y = element_line( size=.1, color="black" ),
        axis.text.x=element_text(size=18),axis.text.y=element_text(size=18),
        axis.title.x=element_text(size=22),axis.title.y=element_text(size=22),
        panel.border = element_blank())+
  labs(y = 'Spain (n=36)\nSNV of  frequency',x='')+scale_colour_manual(name='Trans',
                                                         labels=c('AC','AG','AT','CA','CG','CT','GA','GC','GT','TA','TC','TG'), 
                                                         values = c("#313695","#436FB1","#6BA2CB","#9BCDE2",
                                                                    "#CCE9F2","#F0F9D8","#FEF0A9","#FDCD7E",
                                                                    "#FA9C58","#EE613D","#D22B26","#A50026"))
#figure b
#######################################################
library(ggplot2)
library(ggthemes)
library(RColorBrewer)
datab = read.table('figure5A.Spain.list',header = TRUE,sep = "\t")
Spainb=ggplot(datab, aes(x=Trans,y=Counts,fill=Trans))+geom_bar(stat="identity",width=0.5,position='dodge')+ labs(y = '# of sample') +
  theme_few()+
  theme(panel.background = element_rect(fill = NA),legend.title=element_blank(),
        legend.position = "none",legend.text=element_blank(),
        panel.grid.major.x = element_blank(),panel.grid.major.y = element_line( size=.1, color="black" ),
        axis.text.x=element_text(size=18,angle=0),axis.text.y=element_text(size=18),
        axis.title.x=element_text(size=22),axis.title.y=element_text(size=22),
        panel.border = element_blank())+
  labs(y = 'SNV count',x='')+
  scale_fill_manual(name='Types', 
                    labels=c('AC','AG','AT','CA','CG','CT','GA','GC','GT','TA','TC','TG'), 
                    values = c("#313695","#436FB1","#6BA2CB","#9BCDE2",
                               "#CCE9F2","#F0F9D8","#FEF0A9","#FDCD7E",
                               "#FA9C58","#EE613D","#D22B26","#A50026"))


#######################################################
#figure c
#######################################################
library(ggplot2)
library(ggthemes)
library(RColorBrewer)
datac = read.table('figure5A.Spain.list',header = TRUE,sep = "\t")
Spainc=ggplot(datac, aes(x=Trans,y=Counts,fill=Trans))+geom_bar(stat="identity",width=0.5,position='dodge')+ labs(y = '# of sample') +
  theme_few()+
  theme(panel.background = element_rect(fill = NA),legend.title=element_blank(),
        legend.position = "none",legend.text=element_blank(),
        panel.grid.major.x = element_blank(),panel.grid.major.y = element_line( size=.1, color="black" ),
        axis.text.x=element_text(size=18,angle=0),axis.text.y=element_text(size=18),
        axis.title.x=element_text(size=22),axis.title.y=element_text(size=22),
        panel.border = element_blank())+
  labs(y = 'SNV count',x='')+
  scale_fill_manual(name='Types', 
                    labels=c('AC','AG','AT','CA','CG','CT','GA','GC','GT','TA','TC','TG'), 
                    values = c("#313695","#436FB1","#6BA2CB","#9BCDE2",
                               "#CCE9F2","#F0F9D8","#FEF0A9","#FDCD7E",
                               "#FA9C58","#EE613D","#D22B26","#A50026"))

#########Virginia data
#figure a
##########################
library(ggplot2)
library(ggthemes)
dataa = read.table('figure5A.Virginia.list',header = TRUE,sep = "\t")

Virginiaa=ggplot(dataa, aes(x=Trans,y=Freqs,color=Trans))+geom_point()+geom_jitter()+theme_few()+guides(color=FALSE)+
  theme(panel.background = element_rect(fill = NA),legend.title=element_blank(),
        panel.grid.major.x = element_blank(),panel.grid.major.y = element_line( size=.1, color="black" ),
        axis.text.x=element_text(size=18),axis.text.y=element_text(size=18),
        axis.title.x=element_text(size=22),axis.title.y=element_text(size=22),
        panel.border = element_blank())+
  labs(y = 'Virginia (n=35)\nSNV of  frequency',x='')+scale_colour_manual(name='Trans',
                                                                        labels=c('AC','AG','AT','CA','CG','CT','GA','GC','GT','TA','TC','TG'), 
                                                                        values = c("#313695","#436FB1","#6BA2CB","#9BCDE2",
                                                                                   "#CCE9F2","#F0F9D8","#FEF0A9","#FDCD7E",
                                                                                   "#FA9C58","#EE613D","#D22B26","#A50026"))
#figure b
#######################################################
library(ggplot2)
library(ggthemes)
library(RColorBrewer)
datab = read.table('figure5A.Virginia.list',header = TRUE,sep = "\t")
Virginiab=ggplot(datab, aes(x=Trans,y=Counts,fill=Trans))+geom_bar(stat="identity",width=0.5,position='dodge')+ labs(y = '# of sample') +
  theme_few()+
  theme(panel.background = element_rect(fill = NA),legend.title=element_blank(),
        legend.position = "none",legend.text=element_blank(),
        panel.grid.major.x = element_blank(),panel.grid.major.y = element_line( size=.1, color="black" ),
        axis.text.x=element_text(size=18,angle=0),axis.text.y=element_text(size=18),
        axis.title.x=element_text(size=22),axis.title.y=element_text(size=22),
        panel.border = element_blank())+
  labs(y = 'SNV count',x='')+
  scale_fill_manual(name='Types', 
                    labels=c('AC','AG','AT','CA','CG','CT','GA','GC','GT','TA','TC','TG'), 
                    values = c("#313695","#436FB1","#6BA2CB","#9BCDE2",
                               "#CCE9F2","#F0F9D8","#FEF0A9","#FDCD7E",
                               "#FA9C58","#EE613D","#D22B26","#A50026"))


#######################################################
#figure c
#######################################################
library(ggplot2)
library(ggthemes)
library(RColorBrewer)
datac = read.table('figure5A.Virginia.list',header = TRUE,sep = "\t")
Virginiac=ggplot(datac, aes(x=Trans,y=Counts,fill=Trans))+geom_bar(stat="identity",width=0.5,position='dodge')+ labs(y = '# of sample') +
  theme_few()+
  theme(panel.background = element_rect(fill = NA),legend.title=element_blank(),
        legend.position = "none",legend.text=element_blank(),
        panel.grid.major.x = element_blank(),panel.grid.major.y = element_line( size=.1, color="black" ),
        axis.text.x=element_text(size=18,angle=0),axis.text.y=element_text(size=18),
        axis.title.x=element_text(size=22),axis.title.y=element_text(size=22),
        panel.border = element_blank())+
  labs(y = 'SNV count',x='')+
  scale_fill_manual(name='Types', 
                    labels=c('AC','AG','AT','CA','CG','CT','GA','GC','GT','TA','TC','TG'), 
                    values = c("#313695","#436FB1","#6BA2CB","#9BCDE2",
                               "#CCE9F2","#F0F9D8","#FEF0A9","#FDCD7E",
                               "#FA9C58","#EE613D","#D22B26","#A50026"))


#########Ruijin data
#figure a
##########################
library(ggplot2)
library(ggthemes)
dataa = read.table('figure5A.Ruijin.list',header = TRUE,sep = "\t")

Ruijina=ggplot(dataa, aes(x=Trans,y=Freqs,color=Trans))+geom_point()+geom_jitter()+theme_few()+guides(color=FALSE)+
  theme(panel.background = element_rect(fill = NA),legend.title=element_blank(),
        panel.grid.major.x = element_blank(),panel.grid.major.y = element_line( size=.1, color="black" ),
        axis.text.x=element_text(size=18),axis.text.y=element_text(size=18),
        axis.title.x=element_text(size=22),axis.title.y=element_text(size=22),
        panel.border = element_blank())+
  labs(y = 'Ruijin (n=112)\nSNV of  frequency',x='')+scale_colour_manual(name='Trans', 
                                                                        labels=c('AC','AG','AT','CA','CG','CT','GA','GC','GT','TA','TC','TG'), 
                                                                        values = c("#313695","#436FB1","#6BA2CB","#9BCDE2",
                                                                                   "#CCE9F2","#F0F9D8","#FEF0A9","#FDCD7E",
                                                                                   "#FA9C58","#EE613D","#D22B26","#A50026"))
#figure b
#######################################################
library(ggplot2)
library(ggthemes)
library(RColorBrewer)
datab = read.table('figure5A.Ruijin.list',header = TRUE,sep = "\t")
Ruijinb=ggplot(datab, aes(x=Trans,y=Counts,fill=Trans))+geom_bar(stat="identity",width=0.5,position='dodge')+ labs(y = '# of sample') +
  theme_few()+
  theme(panel.background = element_rect(fill = NA),legend.title=element_blank(),
        legend.position = "none",legend.text=element_blank(),
        panel.grid.major.x = element_blank(),panel.grid.major.y = element_line( size=.1, color="black" ),
        axis.text.x=element_text(size=18,angle=0),axis.text.y=element_text(size=18),
        axis.title.x=element_text(size=22),axis.title.y=element_text(size=22),
        panel.border = element_blank())+
  labs(y = 'SNV count',x='')+
  scale_fill_manual(name='Types', 
                    labels=c('AC','AG','AT','CA','CG','CT','GA','GC','GT','TA','TC','TG'), 
                    values = c("#313695","#436FB1","#6BA2CB","#9BCDE2",
                               "#CCE9F2","#F0F9D8","#FEF0A9","#FDCD7E",
                               "#FA9C58","#EE613D","#D22B26","#A50026"))


#######################################################
#figure c
#######################################################
library(ggplot2)
library(ggthemes)
library(RColorBrewer)
datac = read.table('figure5A.Ruijin.list',header = TRUE,sep = "\t")
Ruijinc=ggplot(datac, aes(x=Trans,y=Counts,fill=Trans))+geom_bar(stat="identity",width=0.5,position='dodge')+ labs(y = '# of sample') +
  theme_few()+
  theme(panel.background = element_rect(fill = NA),legend.title=element_blank(),
        legend.position = "none",legend.text=element_blank(),
        panel.grid.major.x = element_blank(),panel.grid.major.y = element_line( size=.1, color="black" ),
        axis.text.x=element_text(size=18,angle=0),axis.text.y=element_text(size=18),
        axis.title.x=element_text(size=22),axis.title.y=element_text(size=22),
        panel.border = element_blank())+
  labs(y = 'SNV count',x='')+
  scale_fill_manual(name='Types', 
                    labels=c('AC','AG','AT','CA','CG','CT','GA','GC','GT','TA','TC','TG'), 
                    values = c("#313695","#436FB1","#6BA2CB","#9BCDE2",
                               "#CCE9F2","#F0F9D8","#FEF0A9","#FDCD7E",
                               "#FA9C58","#EE613D","#D22B26","#A50026"))

library(grid)
grid.newpage()
pushViewport(viewport(layout = grid.layout(nrow = 5, ncol = 3)))
print(UAEa, vp = viewport(layout.pos.row = 1, layout.pos.col = 1))
print(UAEb, vp = viewport(layout.pos.row = 1, layout.pos.col = 2))
print(UAEc, vp = viewport(layout.pos.row = 1, layout.pos.col = 3))

print(GISAIDa, vp = viewport(layout.pos.row = 2, layout.pos.col = 1))
print(GISAIDb, vp = viewport(layout.pos.row = 2, layout.pos.col = 2))
print(GISAIDc, vp = viewport(layout.pos.row = 2, layout.pos.col = 3))

print(Spaina, vp = viewport(layout.pos.row = 3, layout.pos.col = 1))
print(Spainb, vp = viewport(layout.pos.row = 3, layout.pos.col = 2))
print(Spainc, vp = viewport(layout.pos.row = 3, layout.pos.col = 3))

print(Virginiaa, vp = viewport(layout.pos.row = 4, layout.pos.col = 1))
print(Virginiab, vp = viewport(layout.pos.row = 4, layout.pos.col = 2))
print(Virginiac, vp = viewport(layout.pos.row = 4, layout.pos.col = 3))

print(Ruijina, vp = viewport(layout.pos.row = 5, layout.pos.col = 1))
print(Ruijinb, vp = viewport(layout.pos.row = 5, layout.pos.col = 2))
print(Ruijinc, vp = viewport(layout.pos.row = 5, layout.pos.col = 3))
#25*16 inc
