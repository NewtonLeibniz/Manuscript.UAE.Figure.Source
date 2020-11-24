library('pheatmap')
library('RColorBrewer')
datarow = read.table('figureS14.row.heatmap.list',header = TRUE,sep = "\t",stringsAsFactors=TRUE)
data = read.table('figureS14.heatmap.list',header = TRUE,sep = "\t",stringsAsFactors=TRUE)
dat=data[,0:-1]
test=matrix(unlist(dat), ncol = 131, nrow =24)
colnames(test) = paste(datarow$SampleID, sep = "")
rownames(test) = paste(c('C8782C','T28144T','C8782T','T28144C','G28878A','G29742A','G11230T','G28167A','C241T','C3037T','C14408T','A23403G','G28881A','G28882A','G28883C','T7171C','C27002T','T21775G','G5924A','G23311T','C7851T','A24170G','C1059T','G25563T'),sep = "")

annotation_col = data.frame( Sample_Clade = factor(rep(c("19A","19B","20A","20B","20C"), c(4,47,8,71,1))))  # {'19A': 4, '19B': 47,'20A': 8,'20B': 71,  '20C': 1}

rownames(annotation_col) = paste(datarow$SampleID, sep = "")

annotation_row= data.frame(Position_Clade = factor(rep(c("19A","19B","Sub19B.1","20A","20B","Sub20B.1","Sub20B.2","Sub20B.3","Sub20B.4","20C"), c(2,2,4,4,3,2,2,1,2,2))))
rownames(annotation_row) =paste(c('C8782C','T28144T','C8782T','T28144C','G28878A','G29742A','G11230T','G28167A','C241T','C3037T','C14408T','A23403G','G28881A','G28882A','G28883C','T7171C','C27002T','T21775G','G5924A','G23311T','C7851T','A24170G','C1059T','G25563T'),sep = "")

ann_colors = list(Sample_Clade  = c('19A'="#00008B",'19B'="#4169E1",'20A'="#DAA520",'20B'="#800080",'20C'="#8B0000"),
                  Position_Clade=c('19A'="#00008B",'19B'="#4169E1",'Sub19B.1'="#6495ED",'20A'="#DAA520",'20B'="#800080",'Sub20B.1'="#FFB3CC",'Sub20B.2'="#FFB3DD",'Sub20B.3'="#FFB3EE",'Sub20B.4'="#FFB3FF",'20C'="#8B0000"))

pheatmap(test,cluster_row = FALSE,cluster_col = FALSE,angle_col = "90",
         annotation_row = annotation_row,gaps_row = c(2,4,8,12,15,17,19,20,22),
         annotation_col = annotation_col,gaps_col = c(4,51,59,130),
         size = 18, fontsize_row = 15, fontsize_col = 15,
         color = colorRampPalette(rev(brewer.pal(n = 11, name ="RdYlBu")))(100),
         annotation_colors=ann_colors)
