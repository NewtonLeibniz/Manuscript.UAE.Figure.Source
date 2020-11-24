  library(ggplot2)
  data = read.table('figureS5.data.csv',header = TRUE,sep = ",")
  xrow = factor(data$Types,levels=c('SNP','Deletion','Insertion'))
  ggplot(data, aes(x=xrow,y=Counts))+geom_bar(stat="identity",position = 'dodge',width = 0.7,fill='steelblue')+ 
    theme_few()+
    theme(panel.background = element_rect(fill = NA),legend.title=element_blank(),
          legend.position = c(0.7,0.85),legend.text=element_text(size=20),
          panel.grid.major.x = element_blank(),panel.grid.major.y = element_line( size=.1, color="black" ),
          axis.text.x=element_text(size=18),axis.text.y=element_text(size=18),
          axis.title.x=element_text(size=22),axis.title.y=element_text(size=22),
          panel.border = element_blank())+
    labs(y = '# of counts',x='Variants types')
  scale_fill_manual(name='Types',
                    labels=c('nonsynonymous','synonymous'), 
                    values = c('#313695','#B7DFEC','#FDC87A','#A50026'))
