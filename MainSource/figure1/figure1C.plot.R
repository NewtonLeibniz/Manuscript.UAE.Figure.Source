library(ggplot2)
library(ggthemes)
library(RColorBrewer)
datac = read.table('figure1c.data.csv',header = TRUE,sep = ",")
ggplot(datac, aes(x=number,y=counts,fill=types))+geom_bar(stat="identity",position='dodge')+ labs(y = '# of sample') +
  theme_few()+scale_x_continuous(breaks=datac$number, labels = datac$xzhou)+
  theme(panel.background = element_rect(fill = NA),legend.title=element_blank(),
        legend.position = c(0.7,0.83),legend.text=element_text(size=22),
        panel.grid.major.x = element_blank(),panel.grid.major.y = element_line( size=.1, color="black" ),
        axis.text.x=element_text(size=18,angle=0),axis.text.y=element_text(size=18),
        axis.title.x=element_text(size=22),axis.title.y=element_text(size=22),
        panel.border = element_blank())+
        labs(y = '# of Variants',x='Allele Count')+
  scale_fill_manual(name='Types',
                    labels=c('nonsynonymous(698)','synonymous(547)'), 
                    values = c('#313695','#B7DFEC','#FDC87A','#A50026'))
