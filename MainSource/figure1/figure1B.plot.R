library(ggplot2)
library(ggthemes)
datab = read.table('figure.1b.types.csv',header = TRUE,sep = ",",comment.char = "$")
library(scales) 
datab$types=factor(datab$types,levels=c('N<500 (896)','500<N<1000 (27)','1000<N<1500 (14)','N>1500 (130)'))
datab$colorss=factor(datab$colorss,levels = c('#313695','#B7DFEC','#FDC87A','#A50026'))
colr <- as.character(unique(datab$colorss))
sha = as.character(unique(datab$types))
ggplot(data = datab, mapping = aes(x = CT,y = RPM,colour=datab$types,
  shape=datab$types,size=10))+geom_point(size = 2) + # geom_smooth(method = lm,alpha=0)+
  scale_y_continuous(trans = log10_trans(),
                     breaks = trans_breaks("log10", function(x) 10^x), 
                     labels = trans_format("log10", math_format(10^.x)))+
  theme_bw()+#scale_x_continuous(breaks=datac$number, labels = datac$xzhou)+
  theme(legend.title=element_blank(),
        legend.position = c(0.8,0.85),legend.text=element_text(size=20),
        axis.text.x=element_text(size=18,angle=0),axis.text.y=element_text(size=18),
        axis.title.x=element_text(size=22),axis.title.y=element_text(size=22),
        panel.border = element_blank())+
  labs(y = 'RPM (SARS-CoV-2 reads per million reads)',x='qRT-PCR Ct value')+
  scale_color_manual(values = c('#313695','#BDFFEC','#FDC87A','#A50026'))
