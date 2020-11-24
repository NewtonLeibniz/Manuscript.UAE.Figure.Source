library(ggplot2)

# data1 UAE coverage
data1=read.table('figure2B.partA.list',header=TRUE,sep="\t")
# data2 global coverage   16*5 inc
data2=read.table('figure2B.partB.list',header=TRUE,sep="\t")
# data3 virus part genes  16*5 inc
data3=read.table('figure2B.partC.list',header=TRUE,sep="\t")
p1=ggplot(data=data1,aes(x=Position,y=Percent))+geom_bar(stat = 'identity')+labs(y="UAE Frequency",title="A")+
  scale_y_continuous(breaks=seq(0, 1, 0.1))+scale_x_continuous(breaks=seq(0, 30000, 2000))+  
  annotate(geom="text",x=241,y=0.4, label='C 241 T',size=5,angle=45,color="#8B0000")+annotate("point", x = 241, y = 0.76,colour = "#DAA520", size = 4)+
  annotate(geom="text",x=3037,y=0.5, label='C 3037 T',size=5,angle=45,color="#8B0000")+annotate("point", x = 3037, y = 0.76,colour = "#DAA520", size = 4)+
  annotate(geom="text",x=5924,y=0.15, label='G 5924 A',size=5,angle=45,color="#8B0000")+annotate("point", x = 5924, y = 0.21,colour = "black", size = 4)+
  annotate(geom="text",x=7171,y=0.15, label='T 7171 C',size=5,angle=45,color="#8B0000")+annotate("point", x = 7171, y = 0.11,colour = "black", size = 4)+
  annotate(geom="text",x=7851,y=0.15, label='C 7851 T',size=5,angle=45,color="#8B0000")+annotate("point", x = 7851, y = 0.09,colour = "black", size = 4)+
  annotate(geom="text",x=8782,y=0.15, label='C 8782 T',size=5,angle=45,color="#8B0000")+annotate("point", x = 8782, y = 0.22,colour = "#4169E1", size = 4)+
  annotate(geom="text",x=11230,y=0.15, label='G 11230 T',size=5,angle=45,color="#8B0000")+annotate("point", x = 11230, y = 0.22,colour = "black", size = 4)+
  annotate(geom="text",x=14408,y=0.4, label='C 14408 T',size=5,angle=45,color="#8B0000")+annotate("point", x = 14408, y = 0.76,colour = "#DAA520", size = 4)+
  annotate(geom="text",x=21775,y=0.4, label='T 21775 G',size=5,angle=45,color="#8B0000")+annotate("point", x = 21775, y = 0.22,colour = "black", size = 4)+
  annotate(geom="text",x=23311,y=0.2, label='G 23311 T',size=5,angle=45,color="#8B0000")+annotate("point", x = 23311, y = 0.1,colour = "black", size = 4)+
  annotate(geom="text",x=23403,y=0.5, label='A 23403 G',size=5,angle=45,color="#8B0000")+annotate("point", x = 23403, y = 0.77,colour = "#DAA520", size = 4)+
  annotate(geom="text",x=24170,y=0.15, label='A 24170 G',size=5,angle=45,color="#8B0000")+annotate("point", x = 24170, y = 0.08,colour = "black", size = 4)+
  annotate(geom="text",x=27002,y=0.15, label='C 27002 T',size=5,angle=45,color="#8B0000")+annotate("point", x = 27002, y = 0.11,colour = "black", size = 4)+
  annotate(geom="text",x=28144,y=0.5, label='T 28144 C',size=5,angle=45,color="#8B0000")+annotate("point", x = 28144, y = 0.22,colour = "#4169E1", size = 4)+
  annotate(geom="text",x=28167,y=0.15, label='G 28167 A',size=5,angle=45,color="#8B0000")+annotate("point", x = 28167, y = 0.2,colour = "black", size = 4)+
  annotate(geom="text",x=28878,y=0.1, label='G 28878 A',size=5,angle=45,color="#8B0000")+annotate("point", x = 28878, y = 0.23,colour = "black", size = 4)+
  annotate(geom="text",x=28881,y=0.4, label='GGG 28881 AAC',size=5,angle=45,color="#8B0000")+annotate("point", x = 28881, y = 0.68,colour = "#800080", size = 4)+
  annotate(geom="text",x=29742,y=0.3, label='G 29742 A',size=5,angle=45,color="#8B0000")+annotate("point", x = 29742, y = 0.25,colour = "black", size = 4)+theme_bw()+
  theme(axis.title.x=element_blank(),axis.title.y=element_text(size = 16),axis.text.y = element_text(size = 13),
        axis.text.x=element_blank(),axis.ticks.x=element_blank(),
        panel.grid =element_blank(),panel.border = element_blank(),axis.line.y=element_line(colour = "black"),axis.line.x=element_blank()) 

p2=ggplot(data=data2,aes(x=Position,y=Coverage))+geom_bar(stat = 'identity')+labs(y="CNCB Frequency",title="B")+
  scale_y_continuous(breaks=seq(0, 1, 0.1))+scale_x_continuous(breaks=seq(0, 30000, 2000))+theme_bw()+
  annotate(geom="text",x=1059,y=0.4, label='C 1059 T',size=5,angle=45,color="#8B0000")+annotate("point", x = 1059, y = 0.25,colour = "#8B0000", size = 4)+
  annotate(geom="text",x=25563,y=0.5, label='G 25563 T',size=5,angle=45,color="#8B0000")+annotate("point", x = 25563, y = 0.33,colour = "#8B0000", size = 4)+
  
  theme(axis.title.x=element_blank(),axis.title.y=element_text(size = 16),axis.text.y = element_text(size = 13),
        axis.text.x=element_blank(),axis.ticks.x=element_blank(),
        panel.grid =element_blank(),panel.border = element_blank(),axis.line.y=element_line(colour = "black"),axis.line.x=element_blank())
virus_part = c('None_ends','ORF10','N','ORF8','ORF7b','ORF7a','ORF6','M','E','ORF3a','S','ORF1ab','None_starts')

data3$Parts <- factor(data3$Parts, levels = virus_part)
p3=ggplot(data=data3,aes(x=Classes,fill=Parts))+geom_bar(position='stack',width=0.1)+coord_flip()+
  scale_y_continuous(breaks=seq(0, 30000, 2000))+labs(y="Position",x="Gene",title="C")+ scale_x_discrete(labels="Structure")+
  annotate(geom="text",x=0.9,y=5000, label='ORF1ab',size=5)+
  annotate(geom="text",x=0.9,y=22000, label='S',size=5)+
  annotate(geom="text",x=1.2,y=25000, label='ORF3a',size=5)+
  annotate(geom="text",x=0.8,y=26000, label='E',size=5)+
  annotate(geom="text",x=1.3,y=26500, label='M',size=5)+
  annotate(geom="text",x=0.9,y=27300, label='ORF6',size=5)+
  annotate(geom="text",x=1.2,y=27500, label='ORF7a',size=5)+
  annotate(geom="text",x=0.6,y=27800, label='ORF7b',size=5)+
  annotate(geom="text",x=1.1,y=28000, label='ORF8',size=5)+
  annotate(geom="text",x=0.8,y=29000, label='N',size=5)+
  annotate(geom="text",x=1.1,y=29600, label='ORF10',size=5)+theme_bw()+
  scale_fill_manual(name='图例', 
                    labels=virus_part,
                    values=c('#C9C9C9','#E7B4E1','#E9CD40','#D27025','#B53B6E','#B55EE8','#6331E6','#969BF5','#4D72D9','#71B9CE','#87BE29','#D7C7B7','#BFCDE1','#C9C9C9'))+
  theme(axis.title.y=element_text(size = 16,angle = 90),legend.position = "none",axis.title.x = element_text(size = 24),
        axis.text.y=element_text(size = 16,angle = 90,hjust = 0.5,face = "bold"),axis.text.x = element_text(size = 16,angle=0),
        panel.grid =element_blank(),axis.ticks = element_blank(),panel.border = element_blank())

library(grid)
grid.newpage()
pushViewport(viewport(layout = grid.layout(nrow = 3, ncol = 1)))
print(p1, vp = viewport(layout.pos.row = 1, layout.pos.col = 1))
print(p2, vp = viewport(layout.pos.row = 2, layout.pos.col = 1))
print(p3, vp = viewport(layout.pos.row = 3, layout.pos.col = 1,width = 0.5))

