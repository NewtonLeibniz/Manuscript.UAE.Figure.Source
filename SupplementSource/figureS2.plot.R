library(ggplot2)
library(ggthemes)
datab = read.table('figureS2.csv',header = TRUE,sep = ",")
library(scales) 
ggplot(data = datab, mapping = aes(x = CT,y = RPM,color=DNA_removal)) + 
  geom_point(size = 1) +  geom_smooth(method = lm,alpha=0,formula = y~x)+
  scale_y_continuous(trans = log10_trans(),
                       breaks = trans_breaks("log10", function(x) 10^x), 
                       labels = trans_format("log10", math_format(10^.x)))+
  theme_bw()+
  theme(legend.title=element_blank(),
        legend.position = c(0.8,0.95),legend.text=element_text(size=20),
        axis.text.x=element_text(size=18,angle=0),axis.text.y=element_text(size=18),
        axis.title.x=element_text(size=22),axis.title.y=element_text(size=22),
        panel.border = element_blank())+
  labs(y = 'RPM (SARS-CoV-2 reads per million reads)',x='Ct value')+
  scale_color_manual(name='Types', 
                    labels=c('without rRNA+DNA removal(N=116)','with rRNA+DNA removal(N=951)'), 
                    values = c('blue','red'))+
  annotate(geom="text",x=15,y=2, label='without rRNA+DNA removal\nlog10(RPM) = 6.3104-0.2045*CT\nr^2=0.6288\np<1e-5',
           size=8,angle=0,color="blue")+
annotate(geom="text",x=28,y=9e+3, label='with rRNA+DNA removal\nlog10(RPM) = 8.3191-0.2940*CT\nr^2=0.7671\np<1e-5',
         size=8,angle=0,color="red")
