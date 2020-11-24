library(ggplot2)
library(ggthemes)
library(scales) 
library(RColorBrewer)
library(ggpubr)
datab = read.table('figure3A.list',header = TRUE,sep = "\t")
xrow = factor(datab$Types,levels=c('Longitudinal','Baniyas','Yahar','Al Ain','Al Shahama',
                                   'Al Shamkha','Gheiathi','Hayer','Khabisi','Markhaniya',
                                   'Mezyad','Mutaredh','Salamat','Sila','Wagan','Across settlements'))
ggplot(data = datab, mapping = aes(x = xrow,y = Geneticdistance,fill=Types)) + 
  geom_point(size = 1) +stat_boxplot(geom="errorbar",width=0.15)+ geom_boxplot()+ 

  annotate(geom="text",x='Longitudinal',y=5, label='32 longitudinal pairs\n9 individuals',size=7,angle=0,color="#000000")+
  annotate(geom="text",x='Baniyas',y=35, label='36 paried comparisons\n9 individuals',size=7,angle=0,color="#000000")+
  annotate(geom="text",x='Yahar',y=50, label='66 paried comparisons\n12 individuals',size=7,angle=0,color="#000000")+
  annotate(geom="text",x='Al Ain',y=40, label='15 paried comparisons\n6 individuals',size=7,angle=0,color="#000000")+
  annotate(geom="text",x='Al Shahama',y=50, label='6 paried comparisons\n4 individuals',size=7,angle=0,color="#000000")+
  annotate(geom="text",x='Al Shamkha',y=30, label='10 paried comparisons\n5 individuals',size=7,angle=0,color="#000000")+
  annotate(geom="text",x='Gheiathi',y=55, label='3 paried comparisons\n3 individuals',size=7,angle=0,color="#000000")+
  annotate(geom="text",x='Hayer',y=20, label='1 paried comparisons\n2 individuals',size=7,angle=0,color="#000000")+
  annotate(geom="text",x='Khabisi',y=45, label='1 paried comparisons\n2 individuals',size=7,angle=0,color="#000000")+
  annotate(geom="text",x='Markhaniya',y=55, label='6 paried comparisons\n4 individuals',size=7,angle=0,color="#000000")+
  annotate(geom="text",x='Mezyad',y=15, label='1 paried comparisons\n2 individuals',size=7,angle=0,color="#000000")+
  annotate(geom="text",x='Mutaredh',y=10, label='3 paried comparisons\n3 individuals',size=7,angle=0,color="#000000")+
  annotate(geom="text",x='Salamat',y=5, label='1 paried comparisons\n2 individuals',size=7,angle=0,color="#000000")+
  annotate(geom="text",x='Sila',y=10, label='1 paried comparisons\n2 individuals',size=7,angle=0,color="#000000")+
  annotate(geom="text",x='Wagan',y=15, label='1 paried comparisons\n2 individuals',size=7,angle=0,color="#000000")+
  annotate(geom="text",x='Across settlements',y=45, label='1502 paried comparisons\nusing 58 individuals \nin different areas ',size=7,angle=0,color="#000000")+
  theme_bw()+guides(color=FALSE)+
  theme(panel.background = element_rect(fill = NA),legend.title=element_blank(),
        legend.position = "none",legend.text=element_blank(),
        axis.text.x=element_text(size=20,angle=45),axis.text.y=element_text(size=20),
        axis.title.x=element_blank(),axis.title.y=element_text(size=26),
        panel.border = element_blank())+
  labs(y = 'Distance (L1-norm)')+
  scale_fill_manual(name='Types',
                      labels=c('Longitudinal','Baniyas','Yahar','Al Ain','Al Shahama',
                               'Al Shamkha','Gheiathi','Hayer','Khabisi','Markhaniya',
                               'Mezyad','Mutaredh','Salamat','Sila','Wagan','Across settlements'), 
                      
                      values =c("#313695", "#3D5DA8", "#5083BB", "#6EA6CD", "#8FC3DC", "#B1DCEA", "#D2ECF4",
                                "#FFFFBF","#FEEBA1", "#FDD384", "#FDB466", "#F88D52", "#F0653F", "#DE3F2E", "#C41E26", "#A50026"))
                    
