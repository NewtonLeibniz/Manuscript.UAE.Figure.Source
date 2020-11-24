library(ggplot2)
data = read.table('figureS6.data.csv',header = TRUE,sep = ",")
ggplot(data, aes(x=Freq_group,y=Frequency,fill=Types))+geom_bar(stat="identity",position = 'dodge')+
theme_few()+
  theme(panel.background = element_rect(fill = NA),legend.title=element_blank(),
        legend.position = c(0.1,0.85),legend.text=element_text(size=20),
        panel.grid.major.x = element_blank(),panel.grid.major.y = element_line( size=.1, color="black" ),
        axis.text.x=element_text(size=18),axis.text.y=element_text(size=18),
        axis.title.x=element_text(size=22),axis.title.y=element_text(size=22),
        panel.border = element_blank())+
  labs(x= 'Frequency',y='Percent of consensus')+
scale_fill_manual(name='Types',
                  labels=c('CoV0001','CoV0002'), 
                  values = c('#313695','#A50026'))
