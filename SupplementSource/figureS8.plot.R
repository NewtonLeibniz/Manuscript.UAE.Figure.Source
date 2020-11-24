  library(ggplot2)
  data = read.table('figureS8.data.csv',header = TRUE,sep = ",")
  ggplot(data, aes(x=types,y=identity))+geom_point(color='steelblue',position = "jitter")+
    theme_few()+guides(color=FALSE)+
    theme(panel.background = element_rect(fill = NA),legend.title=element_blank(),
          panel.grid.major.x = element_blank(),panel.grid.major.y = element_line( size=.1, color="black" ),
          axis.text.x=element_text(size=18),axis.text.y=element_text(size=18),
          axis.title.x=element_text(size=22),axis.title.y=element_text(size=22),
          panel.border = element_blank())+
    labs(y = 'Identity range',x='')+
    scale_colour_manual(name='Trans',
                        labels=c('AC','AG','AT','CA','CG','CT','GA','GC','GT','TA','TC','TG'), 
                        values = c("#313695","#436FB1","#6BA2CB","#9BCDE2",
                                   "#CCE9F2","#F0F9D8","#FEF0A9","#FDCD7E",
                                   "#FA9C58","#EE613D","#D22B26","#A50026"))
