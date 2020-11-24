library(ggplot2)
library(ggthemes)
library(scales) 
library(ggpubr)


###Base:A
data = read.table('figure5B.final.timely.A.list',header = TRUE,sep = "\t")
lm_eqn = function(data){
    m=lm(A ~ Time, data)
    eq <- substitute(italic(A) ==a+ b %.% italic(Time),
                     list(a = as.numeric(format(coef(m)[1], digits = 3)),
                          b = as.numeric(format(coef(m)[2], digits = 3))
                     ))
    as.character(as.expression(eq))
  }

plotA=
    ggplot(data = data,aes(x = Time,y = A)) +
    geom_point(size = 2,aes(x = Time,y = A,group=types,color=types)) +geom_smooth(method = lm,formula = y ~ x,alpha=0,color='black')+
      theme_bw()+
    theme(axis.text.x=element_text(size=18,angle=0),axis.text.y=element_text(size=18),
          axis.title.x=element_text(size=22),axis.title.y=element_text(size=22),
          panel.border = element_blank())+scale_colour_manual(labels=c('UAE','Global'),values = c('darkred','steelblue'))+
    labs(y = 'Base content',x=' ') +stat_cor(data=data, method = "pearson",size=6,label.x.npc="middle",label.y.npc="top")+
    ggtitle("Base:A")+ylim(0.298,0.299)+xlim(2020.4,2020.7)+
    annotate("text", x=2020.5, y=0.2987, label=lm_eqn(data), hjust=0, size=6,family="Times",parse=TRUE)+ggtitle("Base:A")

###Base:C
data = read.table('figure5B.final.timely.C.list',header = TRUE,sep = "\t")

lm_eqn = function(data){
      m=lm(C ~ Time, data)
      eq <- substitute(italic(C) == a+b %.% italic(Time),
                       list(a = as.numeric(format(coef(m)[1], digits = 3)),
                            b = as.numeric(format(coef(m)[2], digits = 3))
                       ))
      as.character(as.expression(eq))
    }
    plotC=
      ggplot(data = data,aes(x = Time,y = C)) +
    geom_point(size = 2,aes(x = Time,y = C,group=types,color=types)) +  geom_smooth(method = lm,formula = y ~ x,alpha=0,color='black')+
        theme_bw()+
    theme(axis.text.x=element_text(size=18,angle=0),axis.text.y=element_text(size=18),
          axis.title.x=element_text(size=22),axis.title.y=element_text(size=22),
          panel.border = element_blank())+scale_colour_manual(labels=c('UAE','Global'),values = c('darkred','steelblue'))+
    labs(y = 'Base content',x=' ') +stat_cor(data=data, method = "pearson",size=6,label.x.npc="middle",label.y.npc="top")+
    ggtitle("Base:C")+xlim(2020.4,2020.7)+ylim(0.183,0.184)+
    annotate("text", x=2020.5, y=0.18375, label=lm_eqn(data), hjust=0, size=6,family="Times",parse=TRUE)+ggtitle("Base:C")

###Base:G
data = read.table('figure5B.final.timely.G.list',header = TRUE,sep = "\t")
lm_eqn = function(data){
        m=lm(G ~ Time, data)
        eq <- substitute(italic(G) == a+b %.% italic(Time),
                         list(a = as.numeric(format(coef(m)[1], digits = 3)),
                              b = as.numeric(format(coef(m)[2], digits = 3))
                         ))
        as.character(as.expression(eq))
      }
  plotG=
    ggplot(data = data,aes(x = Time,y = G)) +
    geom_point(size = 2,aes(x = Time,y = G,group=types,color=types)) +geom_smooth(method = lm,formula = y ~ x,alpha=0,color='black')+
      theme_bw()+
    theme(axis.text.x=element_text(size=18,angle=0),axis.text.y=element_text(size=18),
          axis.title.x=element_text(size=22),axis.title.y=element_text(size=22),
          panel.border = element_blank())+scale_colour_manual(labels=c('UAE','Global'),values = c('darkred','steelblue'))+
    labs(y = 'Base content',x=' ') +stat_cor(data=data, method = "pearson",size=6,label.x.npc="middle",label.y.npc="top")+
    ggtitle("Base:G")+xlim(2020.4,2020.7)+ylim(0.1955,0.1965)+
    annotate("text", x=2020.5, y=0.19625, label=lm_eqn(data), hjust=0, size=6,family="Times",parse=TRUE)+ggtitle("Base:G")

###Base:U
data = read.table('Figure5B.final.timely.U.list',header = TRUE,sep = "\t")

lm_eqn = function(data){
      m=lm(U ~ Time, data)
      eq <- substitute(italic(U) == a+b %.% italic(Time),
                       list(a = as.numeric(format(coef(m)[1], digits = 3)),
                            b = as.numeric(format(coef(m)[2], digits = 3))
                       ))
      as.character(as.expression(eq))
    }
  plotU=
    ggplot(data = data,aes(x = Time,y = U)) +
    geom_point(size = 2,aes(x = Time,y = U,group=types,color=types)) +  geom_smooth(method = lm,formula = y ~ x,alpha=0,color='black')+
    theme_bw()+
    theme(axis.text.x=element_text(size=18,angle=0),axis.text.y=element_text(size=18),
          axis.title.x=element_text(size=22),axis.title.y=element_text(size=22),
          panel.border = element_blank())+scale_colour_manual(labels=c('UAE','Global'),values = c('darkred','steelblue'))+
    labs(y = 'Base content',x=' ') +stat_cor(data=data, method = "pearson",size=6,label.x.npc="middle",label.y.npc="top")+
    ggtitle("Base:U")+xlim(2020.4,2020.7)+ylim(0.3215,0.3225)+
    annotate("text", x=2020.5, y=0.3224, label=lm_eqn(data), hjust=0, size=6,family="Times",parse=TRUE)+ggtitle("Base:U")
  
###Merge
library(grid)
  grid.newpage()
  pushViewport(viewport(layout = grid.layout(nrow = 2, ncol = 2)))
  print(plotA, vp = viewport(layout.pos.row = 1, layout.pos.col = 1))
  print(plotC, vp = viewport(layout.pos.row = 1, layout.pos.col = 2))

  print(plotG, vp = viewport(layout.pos.row = 2, layout.pos.col = 1))
  print(plotU, vp = viewport(layout.pos.row = 2, layout.pos.col = 2))
