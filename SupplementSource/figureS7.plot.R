  library(ggplot2)
  library(ggthemes)
  library(scales) 
  data = read.table('figureS7.depth.muta.list',header = TRUE,sep = "\t")
  ggplot(data = data, mapping = aes(x = Reads,y = Munum)) + 
    geom_point(size = 2,color='steelblue') +  geom_smooth(method = lm,alpha=0,color='black')+
    theme_bw()+#scale_x_continuous(breaks=datac$number, labels = datac$xzhou)+
    theme(axis.text.x=element_text(size=18,angle=0),axis.text.y=element_text(size=18),
          axis.title.x=element_text(size=22),axis.title.y=element_text(size=22),
          panel.border = element_blank())+
    labs(y = 'Mutation number',x='Reads(log10)')+stat_cor(data=data, method = "pearson",size=6,label.x.npc="middle",label.y.npc="top")+
  annotate(geom="text",x=7.5,y=18, label='y=7.41+0.363*x',size=8,angle=0,color="black")
  
  lm_eqn = function(data){
    m=lm(Munum ~ Reads, data) 
    eq <- substitute(italic(Munum) == a+b %.% italic(Reads)*","~~italic(r)^2~"="~r2,
                     list(a = as.numeric(format(coef(m)[1], digits = 3)),
                          b = as.numeric(format(coef(m)[2], digits = 3)),
                          r2 = format(summary(m)$r.squared, digits = 3)))
    as.character(as.expression(eq))
  } 
