datamerge=read.table('figureS9.data.csv',header=TRUE,sep="\t")
No=factor(datamerge$Time,levels = c('Jan 1','Jan 10','Jan 18','Jan 25',
                                    'Feb 1','Feb 10','Feb 18','Feb 25',
                                    'Mar 1','Mar 10','Mar 18','Mar 25',
                                    'Apr 1','Apr 10','Apr 18','Apr 25',
                                    'May 1','May 10','May 18','May 25',
                                    'Jun 1','Jun 10','Jun 25'))
###19B
#C8782T
ggplot(datamerge)+geom_point(aes(x=No,y=C8782T,group=Types,color=Types))+ggtitle("C8782T")+
  labs(x = "", y = "19B\nFrequency")+theme_bw()+ylim(0,1)+theme(axis.text.x=element_text(size=11,angle=45),axis.text.y=element_text(size=12),axis.title.x=element_text(size=18),axis.title.y=element_text(size=18))+scale_colour_manual(labels=c('Global','UAE'),values = c('steelblue','darkred'))+scale_x_continuous(breaks = seq(0,23,4),labels = c('Jan 1','Jan 25','Feb 25','Mar 25','Apr 25','May 25'))
#T28144C
g2=ggplot(datamerge)+geom_point(aes(x=No,y=T28144C,group=Types,color=Types))+ggtitle("T28144C")+
  labs(x = "", y = "Frequency")+theme_bw()+ylim(0,1)+theme(axis.text.x=element_text(size=11,angle=45),axis.text.y=element_text(size=12),axis.title.x=element_text(size=18),axis.title.y=element_text(size=18))+scale_colour_manual(labels=c('Global','UAE'),values = c('steelblue','darkred'))+scale_x_continuous(breaks = seq(0,23,4),labels = c('Jan 1','Jan 25','Feb 25','Mar 25','Apr 25','May 25'))
###20A
#C241T
g3=ggplot(datamerge)+geom_point(aes(x=No,y=C241T,group=Types,color=Types))+ggtitle("C241T")+
  labs(x = "", y = "20A\nFrequency")+theme_bw()+ylim(0,1)+theme(axis.text.x=element_text(size=11,angle=45),axis.text.y=element_text(size=12),axis.title.x=element_text(size=18),axis.title.y=element_text(size=18))+scale_colour_manual(labels=c('Global','UAE'),values = c('steelblue','darkred'))+scale_x_continuous(breaks = seq(0,23,4),labels = c('Jan 1','Jan 25','Feb 25','Mar 25','Apr 25','May 25'))
#C3037T
g4=ggplot(datamerge)+geom_point(aes(x=No,y=C3037T,group=Types,color=Types))+ggtitle("C3037T")+
  labs(x = "", y = "Frequency")+theme_bw()+ylim(0,1)+theme(axis.text.x=element_text(size=11,angle=45),axis.text.y=element_text(size=12),axis.title.x=element_text(size=18),axis.title.y=element_text(size=18))+scale_colour_manual(labels=c('Global','UAE'),values = c('steelblue','darkred'))+scale_x_continuous(breaks = seq(0,23,4),labels = c('Jan 1','Jan 25','Feb 25','Mar 25','Apr 25','May 25'))
#C14408T
g5=ggplot(datamerge)+geom_point(aes(x=No,y=C14408T,group=Types,color=Types))+ggtitle("C14408T")+
  labs(x = "", y = "Frequency")+theme_bw()+ylim(0,1)+theme(axis.text.x=element_text(size=11,angle=45),axis.text.y=element_text(size=12),axis.title.x=element_text(size=18),axis.title.y=element_text(size=18))+scale_colour_manual(labels=c('Global','UAE'),values = c('steelblue','darkred'))+scale_x_continuous(breaks = seq(0,23,4),labels = c('Jan 1','Jan 25','Feb 25','Mar 25','Apr 25','May 25'))
#A23403G
g6=ggplot(datamerge)+geom_point(aes(x=No,y=A23403G,group=Types,color=Types))+ggtitle("A23403G")+
  labs(x = "", y = "Frequency")+theme_bw()+ylim(0,1)+theme(axis.text.x=element_text(size=11,angle=45),axis.text.y=element_text(size=12),axis.title.x=element_text(size=18),axis.title.y=element_text(size=18))+scale_colour_manual(labels=c('Global','UAE'),values = c('steelblue','darkred'))+scale_x_continuous(breaks = seq(0,23,4),labels = c('Jan 1','Jan 25','Feb 25','Mar 25','Apr 25','May 25'))

###20B
#GGG28881AAC
g7=ggplot(datamerge)+geom_point(aes(x=No,y=GGG28881AAC,group=Types,color=Types))+ggtitle("GGG28881AAC")+
  labs(x = "", y = "20B\nFrequency")+theme_bw()+ylim(0,1)+theme(axis.text.x=element_text(size=11,angle=45),axis.text.y=element_text(size=12),axis.title.x=element_text(size=18),axis.title.y=element_text(size=18))+scale_colour_manual(labels=c('Global','UAE'),values = c('steelblue','darkred'))+scale_x_continuous(breaks = seq(0,23,4),labels = c('Jan 1','Jan 25','Feb 25','Mar 25','Apr 25','May 25'))
###Sub19B.1
#G29742A
g8=ggplot(datamerge)+geom_point(aes(x=No,y=G29742A,group=Types,color=Types))+ggtitle("G29742A")+
  labs(x = "", y = "Sub19B.1\nFrequency")+theme_bw()+ylim(0,1)+theme(axis.text.x=element_text(size=11,angle=45),axis.text.y=element_text(size=12),axis.title.x=element_text(size=18),axis.title.y=element_text(size=18))+scale_colour_manual(labels=c('Global','UAE'),values = c('steelblue','darkred'))+scale_x_continuous(breaks = seq(0,23,4),labels = c('Jan 1','Jan 25','Feb 25','Mar 25','Apr 25','May 25'))
#G28878A
g9=ggplot(datamerge)+geom_point(aes(x=No,y=G28878A,group=Types,color=Types))+ggtitle("G28878A")+
  labs(x = "", y = "Frequency")+theme_bw()+ylim(0,1)+theme(axis.text.x=element_text(size=11,angle=45),axis.text.y=element_text(size=12),axis.title.x=element_text(size=18),axis.title.y=element_text(size=18))+scale_colour_manual(labels=c('Global','UAE'),values = c('steelblue','darkred'))+scale_x_continuous(breaks = seq(0,23,4),labels = c('Jan 1','Jan 25','Feb 25','Mar 25','Apr 25','May 25'))
#G11230T
g10=ggplot(datamerge)+geom_point(aes(x=No,y=G11230T,group=Types,color=Types))+ggtitle("G11230T")+
  labs(x = "", y = "Frequency")+theme_bw()+ylim(0,1)+theme(axis.text.x=element_text(size=11,angle=45),axis.text.y=element_text(size=12),axis.title.x=element_text(size=18),axis.title.y=element_text(size=18))+scale_colour_manual(labels=c('Global','UAE'),values = c('steelblue','darkred'))+scale_x_continuous(breaks = seq(0,23,4),labels = c('Jan 1','Jan 25','Feb 25','Mar 25','Apr 25','May 25'))
#G28167A
g11=ggplot(datamerge)+geom_point(aes(x=No,y=G28167A,group=Types,color=Types))+ggtitle("G28167A")+
  labs(x = "", y = "Frequency")+theme_bw()+ylim(0,1)+theme(axis.text.x=element_text(size=11,angle=45),axis.text.y=element_text(size=12),axis.title.x=element_text(size=18),axis.title.y=element_text(size=18))+scale_colour_manual(labels=c('Global','UAE'),values = c('steelblue','darkred'))+scale_x_continuous(breaks = seq(0,23,4),labels = c('Jan 1','Jan 25','Feb 25','Mar 25','Apr 25','May 25'))
###Sub20B.1
#C27002T
g12=ggplot(datamerge)+geom_point(aes(x=No,y=C27002T,group=Types,color=Types))+ggtitle("C27002T")+
  labs(x = "", y = "Sub20B.1\nFrequency")+theme_bw()+ylim(0,1)+theme(axis.text.x=element_text(size=11,angle=45),axis.text.y=element_text(size=12),axis.title.x=element_text(size=18),axis.title.y=element_text(size=18))+scale_colour_manual(labels=c('Global','UAE'),values = c('steelblue','darkred'))+scale_x_continuous(breaks = seq(0,23,4),labels = c('Jan 1','Jan 25','Feb 25','Mar 25','Apr 25','May 25'))
#T7171C
g13=ggplot(datamerge)+geom_point(aes(x=No,y=T7171C,group=Types,color=Types))+ggtitle("T7171C")+
  labs(x = "", y = "Frequency")+theme_bw()+ylim(0,1)+theme(axis.text.x=element_text(size=11,angle=45),axis.text.y=element_text(size=12),axis.title.x=element_text(size=18),axis.title.y=element_text(size=18))+scale_colour_manual(labels=c('Global','UAE'),values = c('steelblue','darkred'))+scale_x_continuous(breaks = seq(0,23,4),labels = c('Jan 1','Jan 25','Feb 25','Mar 25','Apr 25','May 25'))
###Sub20B.2
#T21775G
g14=ggplot(datamerge)+geom_point(aes(x=No,y=T21775G,group=Types,color=Types))+ggtitle("T21775G")+
  labs(x = "", y = "Sub20B.2\nFrequency")+theme_bw()+ylim(0,1)+theme(axis.text.x=element_text(size=11,angle=45),axis.text.y=element_text(size=12),axis.title.x=element_text(size=18),axis.title.y=element_text(size=18))+scale_colour_manual(labels=c('Global','UAE'),values = c('steelblue','darkred'))+scale_x_continuous(breaks = seq(0,23,4),labels = c('Jan 1','Jan 25','Feb 25','Mar 25','Apr 25','May 25'))
#G5924A
g15=ggplot(datamerge)+geom_point(aes(x=No,y=G5924A,group=Types,color=Types))+ggtitle("G5924A")+
  labs(x = "", y = "Frequency")+theme_bw()+ylim(0,1)+theme(axis.text.x=element_text(size=11,angle=45),axis.text.y=element_text(size=12),axis.title.x=element_text(size=18),axis.title.y=element_text(size=18))+scale_colour_manual(labels=c('Global','UAE'),values = c('steelblue','darkred'))+scale_x_continuous(breaks = seq(0,23,4),labels = c('Jan 1','Jan 25','Feb 25','Mar 25','Apr 25','May 25'))
###Sub20B.3
#G23311T
g16=ggplot(datamerge)+geom_point(aes(x=No,y=G23311T,group=Types,color=Types))+ggtitle("G23311T")+
  labs(x = "", y = "Sub20B.3\nFrequency")+theme_bw()+ylim(0,1)+theme(axis.text.x=element_text(size=11,angle=45),axis.text.y=element_text(size=12),axis.title.x=element_text(size=18),axis.title.y=element_text(size=18))+scale_colour_manual(labels=c('Global','UAE'),values = c('steelblue','darkred'))+scale_x_continuous(breaks = seq(0,23,4),labels = c('Jan 1','Jan 25','Feb 25','Mar 25','Apr 25','May 25'))
###Sub20B.4
#C7851T
g17=ggplot(datamerge)+geom_point(aes(x=No,y=C7851T,group=Types,color=Types))+ggtitle("C7851T")+
  labs(x = "", y = "Sub20B.4\nFrequency")+theme_bw()+ylim(0,1)+theme(axis.text.x=element_text(size=11,angle=45),axis.text.y=element_text(size=12),axis.title.x=element_text(size=18),axis.title.y=element_text(size=18))+scale_colour_manual(labels=c('Global','UAE'),values = c('steelblue','darkred'))+scale_x_continuous(breaks = seq(0,23,4),labels = c('Jan 1','Jan 25','Feb 25','Mar 25','Apr 25','May 25'))
#A24170G
g18=ggplot(datamerge)+geom_point(aes(x=No,y=A24170G,group=Types,color=Types))+ggtitle("A24170G")+
  labs(x = "", y = "Frequency")+theme_bw()+ylim(0,1)+theme(axis.text.x=element_text(size=11,angle=45),axis.text.y=element_text(size=12),axis.title.x=element_text(size=18),axis.title.y=element_text(size=18))+scale_colour_manual(labels=c('Global','UAE'),values = c('steelblue','darkred'))+scale_x_continuous(breaks = seq(0,23,4),labels = c('Jan 1','Jan 25','Feb 25','Mar 25','Apr 25','May 25'))
###20C
#G25563T
g19=ggplot(datamerge)+geom_point(aes(x=No,y=G25563T,group=Types,color=Types))+ggtitle("G25563T")+
  labs(x = "", y = "20C\nFrequency")+theme_bw()+ylim(0,1)+theme(axis.text.x=element_text(size=11,angle=45),axis.text.y=element_text(size=12),axis.title.x=element_text(size=18),axis.title.y=element_text(size=18))+scale_colour_manual(labels=c('Global','UAE'),values = c('steelblue','darkred'))+scale_x_continuous(breaks = seq(0,23,4),labels = c('Jan 1','Jan 25','Feb 25','Mar 25','Apr 25','May 25'))
#C1059T
g20=ggplot(datamerge)+geom_point(aes(x=No,y=C1059T,group=Types,color=Types))+ggtitle("C1059T")+
  labs(x = "", y = "Frequency")+theme_bw()+ylim(0,1)+theme(axis.text.x=element_text(size=11,angle=45),axis.text.y=element_text(size=12),axis.title.x=element_text(size=18),axis.title.y=element_text(size=18))+scale_colour_manual(labels=c('Global','UAE'),values = c('steelblue','darkred'))+scale_x_continuous(breaks = seq(0,23,4),labels = c('Jan 1','Jan 25','Feb 25','Mar 25','Apr 25','May 25'))


#####################FigureS12 & S11

#S12 main clades
library(grid)
grid.newpage()
pushViewport(viewport(layout = grid.layout(nrow = 4, ncol = 4)))
print(g1, vp = viewport(layout.pos.row = 1, layout.pos.col = 1))
print(g2, vp = viewport(layout.pos.row = 1, layout.pos.col = 2))

print(g3, vp = viewport(layout.pos.row = 2, layout.pos.col = 1))
print(g4, vp = viewport(layout.pos.row = 2, layout.pos.col = 2))
print(g5, vp = viewport(layout.pos.row = 2, layout.pos.col = 3))
print(g6, vp = viewport(layout.pos.row = 2, layout.pos.col = 4))

print(g7, vp = viewport(layout.pos.row = 3, layout.pos.col = 1))

print(g19, vp = viewport(layout.pos.row = 4, layout.pos.col = 1))
print(g20, vp = viewport(layout.pos.row = 4, layout.pos.col = 2))


#S11 sub clades
library(grid)
grid.newpage()
pushViewport(viewport(layout = grid.layout(nrow = 5, ncol = 4)))
print(g8, vp = viewport(layout.pos.row = 1, layout.pos.col = 1))
print(g9, vp = viewport(layout.pos.row = 1, layout.pos.col = 2))
print(g10, vp = viewport(layout.pos.row = 1, layout.pos.col = 3))
print(g11, vp = viewport(layout.pos.row = 1, layout.pos.col = 4))

print(g12, vp = viewport(layout.pos.row = 2, layout.pos.col = 1))
print(g13, vp = viewport(layout.pos.row = 2, layout.pos.col = 2))

print(g14, vp = viewport(layout.pos.row = 3, layout.pos.col = 1))
print(g15, vp = viewport(layout.pos.row = 3, layout.pos.col = 2))

print(g16, vp = viewport(layout.pos.row = 4, layout.pos.col = 1))

print(g17, vp = viewport(layout.pos.row = 5, layout.pos.col = 1))
print(g18, vp = viewport(layout.pos.row = 5, layout.pos.col = 2))
