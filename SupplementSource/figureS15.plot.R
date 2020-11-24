library(ggplot2)
data = read.table('figureS15.data.csv',header = TRUE,sep = ",",stringsAsFactors=TRUE)
data$Count = as.character(data$Count)
xrow = factor(data$Count,levels=c('1','2','3','4','5','6','7','8','9','10','11','12','13','14','15','16','17','18','19','20','21','22','23','24','25','26'))
ggplot(data, aes(x = xrow)) + geom_histogram(stat='count')+
  labs(title = "",x = "# of intra-host variation", y = "# of Count")+
  theme(axis.title.x = element_text(size = 18),axis.text.x = element_text(size = 14,angle=0),
        axis.title.y = element_text(size = 18),axis.text.y = element_text(size = 16),
        plot.title = element_text(hjust = 0.5,size=20),legend.text=element_text(size=16))
