library(ggplot2)
data = read.table('sub.filtered.align.fasta',header = TRUE,sep = "\t")
p1=ggplot(data, aes(x=Position,y=UAE))+geom_bar(stat="identity",position = 'dodge',color='steelblue')+
  theme_bw()+
  theme(title=element_text(size=22),
        axis.text.x=element_text(size=18),axis.text.y=element_text(size=18),
        axis.title.x=element_text(size=22),axis.title.y=element_text(size=22),
        panel.border = element_blank())+
  labs(x= 'Position',y='Percent of gapN',title="UAE")
p2=ggplot(data, aes(x=Position,y=Global))+geom_bar(stat="identity",position = 'dodge',color='darkred')+
  theme_bw()+#scale_x_discrete(breaks=seq(0,26,3))+
  theme(title = element_text(size=22),
        axis.text.x=element_text(size=18),axis.text.y=element_text(size=18),
        axis.title.x=element_text(size=22),axis.title.y=element_text(size=22),
        panel.border = element_blank())+
  labs(x= 'Position',y='Percent of gapN',title="Global")
library(grid)
grid.newpage()
pushViewport(viewport(layout = grid.layout(nrow = 2, ncol = 1)))
print(p1, vp = viewport(layout.pos.row = 1, layout.pos.col = 1))
print(p2, vp = viewport(layout.pos.row = 2, layout.pos.col = 1))
