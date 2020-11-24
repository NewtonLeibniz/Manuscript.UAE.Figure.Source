  library(ggplot2)
  library(ggthemes)
  datab = read.table('figure3A.Clade.Ct.csv',header = TRUE,sep = ",")
  #repeat samples
  library(scales) 
  library(RColorBrewer)
  library(ggpubr)
  my_comparisons <- list(c('19A','19B','20A','20B','20C'))
  datab$clade = factor(datab$clade,levels = c('19A','19B','Sub19B.1','20A','20B','Sub20B.1','Sub20B.2','Sub20B.3','Sub20B.4','20C'))
  ggplot(data = datab, mapping = aes(x = clade,y = Ct.value,color=clade)) + 
    geom_point(size = 1) +geom_boxplot()+geom_jitter()+stat_compare_means(label.y = 28,size=8)+stat_compare_means(method = "t.test",paired = FALSE,ref.group = ".all.",label.y=26,angle=30,size=6.5)+
    theme_bw()+guides(color=FALSE)+
    theme(panel.background = element_rect(fill = NA),legend.title=element_blank(),
          axis.text.x=element_text(size=18),axis.text.y=element_text(size=18),
          axis.title.x=element_text(size=22),axis.title.y=element_text(size=22),
          panel.border = element_blank())+
    labs(y = 'Ct.value',x='Clades')+
    scale_colour_manual(name='Trans', 
                        labels=c('19A','19B','Sub19B.1','20A','20B','Sub20B.1','Sub20B.2','Sub20B.3','Sub20B.4','20C'), 
                        values = c('19A'="#00008B",'19B'="#4169E1",'Sub19B.1'="#6495ED",'20A'="#DAA520",'20B'="#800080",'Sub20B.1'="#FFB3CC",'Sub20B.2'="#FFB3DD",'Sub20B.3'="#FFB3EE",'Sub20B.4'="#FFB3FF",'20C'="#8B0000"))
                        
