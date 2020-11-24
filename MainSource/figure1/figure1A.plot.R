library("lubridate")
library("ggplot2")
library("scales")
library("magrittr")
library("tidyr")
library("anytime")
library("ggthemes")
library(ggplot2)
library(gtable)
library(grid) 

ggplot2.two_y_axis <- function(g1, g2) {
  g1 <- ggplotGrob(g1)
  g2 <- ggplotGrob(g2)
  
  # Get the location of the plot panel in g1.
  # These are used later when transformed elements of g2 are put back into g1
  pp <- c(subset(g1$layout, name == 'panel', se = t:r))
  
  # Overlap panel for second plot on that of the first plot
  g1 <- gtable_add_grob(g1, g2$grobs[[which(g2$layout$name == 'panel')]], pp$t, pp$l, pp$b, pp$l)
  
  # Then proceed as before:
  
  # ggplot contains many labels that are themselves complex grob; 
  # usually a text grob surrounded by margins.
  # When moving the grobs from, say, the left to the right of a plot,
  # Make sure the margins and the justifications are swapped around.
  # The function below does the swapping.
  # Taken from the cowplot package:
  # https://github.com/wilkelab/cowplot/blob/master/R/switch_axis.R 
  
  hinvert_title_grob <- function(grob){
    
    # Swap the widths
    widths <- grob$widths
    grob$widths[1] <- widths[3]
    grob$widths[3] <- widths[1]
    grob$vp[[1]]$layout$widths[1] <- widths[3]
    grob$vp[[1]]$layout$widths[3] <- widths[1]
    
    # Fix the justification
    grob$children[[1]]$hjust <- 1 - grob$children[[1]]$hjust 
    grob$children[[1]]$vjust <- 1 - grob$children[[1]]$vjust 
    grob$children[[1]]$x <- unit(1, 'npc') - grob$children[[1]]$x
    grob
  }
  
  # Get the y axis title from g2
  index <- which(g2$layout$name == 'ylab-l') # Which grob contains the y axis title?
  ylab <- g2$grobs[[index]]        # Extract that grob
  ylab <- hinvert_title_grob(ylab)     # Swap margins and fix justifications
  
  # Put the transformed label on the right side of g1
  g1 <- gtable_add_cols(g1, g2$widths[g2$layout[index, ]$l], pp$r)
  g1 <- gtable_add_grob(g1, ylab, pp$t, pp$r + 1, pp$b, pp$r + 1, clip = 'off', name = 'ylab-r')
  
  # Get the y axis from g2 (axis line, tick marks, and tick mark labels)
  index <- which(g2$layout$name == 'axis-l')  # Which grob
  yaxis <- g2$grobs[[index]]          # Extract the grob
  
  # yaxis is a complex of grobs containing the axis line, the tick marks, and the tick mark labels.
  # The relevant grobs are contained in axis$children:
  #   axis$children[[1]] contains the axis line;
  #   axis$children[[2]] contains the tick marks and tick mark labels.
  
  # First, move the axis line to the left
  yaxis$children[[1]]$x <- unit.c(unit(0, 'npc'), unit(0, 'npc'))
  
  # Second, swap tick marks and tick mark labels
  ticks <- yaxis$children[[2]]
  ticks$widths <- rev(ticks$widths)
  ticks$grobs <- rev(ticks$grobs)
  
  # Third, move the tick marks
  ticks$grobs[[1]]$x <- ticks$grobs[[1]]$x - unit(1, 'npc') + unit(3, 'pt')
  
  # Fourth, swap margins and fix justifications for the tick mark labels
  ticks$grobs[[2]] <- hinvert_title_grob(ticks$grobs[[2]])
  
  # Fifth, put ticks back into yaxis
  yaxis$children[[2]] <- ticks
  
  # Put the transformed yaxis on the right side of g1
  g1 <- gtable_add_cols(g1, g2$widths[g2$layout[index, ]$l], pp$r)
  g1 <- gtable_add_grob(g1, yaxis, pp$t, pp$r + 1, pp$b, pp$r + 1, clip = 'off', name = 'axis-r')
  grid.newpage()
  grid.draw(g1)
}

data1 = read.table('/Users/apple/Desktop/UAE/COVID-19/UAE_Covid/final0715data/figure_plot/figure1/figure1a.data.csv',header = TRUE,sep = ",")
data1$date<-anytime(data1$date)
dt=c('Jan19','Mar24','Apr25','May25','Jun24','Jul24','Aug24','Sep25','Oct24')
g2=ggplot(data1, aes(No,Samples))+geom_bar(stat='identity',fill = 'darkred')+ labs(y = '# of samples sequenced') +
  theme_few()+xlab("Date")+
  theme(panel.background = element_rect(fill = NA),
        axis.text.x=element_text(size=20),axis.text.y=element_text(size=20),
        axis.title.x=element_text(size=22),axis.title.y=element_text(size=22,color='darkred'),
        panel.border = element_blank())
g2=g2+ scale_x_continuous(breaks=seq(0,257,30), labels = dt)
g1=ggplot(data1, aes(x=No,y=NewCases)) + geom_line(color='steelblue')+ 
  labs(y = 'Daily number of case') +theme_few()+xlab("Date")+ #+scale_y_continuous(breaks=seq(0, 1200, 300))
  theme(panel.background = element_rect(fill = NA),
        axis.text.x=element_text(size=20),axis.text.y=element_text(size=20),
        panel.grid.major.x = element_blank(),panel.grid.major.y = element_line( size=.1, color="black" ),
        axis.title.x=element_text(size=22),axis.title.y=element_text(size=22,color='steelblue'),panel.border = element_blank())+
  annotate(geom="text",x=8,y=350,label='Jan19\nfirst patient\nreported in UAE.',size=7)+
  geom_vline(xintercept=0, linetype="dotted")+
  annotate(geom="text",x=31,y=650,label='Mar25\nAll passenger\nflights suspended.',size=7)+
  geom_vline(xintercept=31, linetype="dotted")+
  annotate(geom="text",x=31,y=1000, label='Mar26\ncurfew started',size=7)+
  geom_vline(xintercept=32, linetype="dotted")+
  annotate(geom="text",x=45,y=1250, label='Mar31\nRT-PCR 10K lab\nestablished',size=7)+
  geom_vline(xintercept=36, linetype="dotted")+
  annotate(geom="text",x=60,y=1500, label='Apr23\nrestriction\nregime relaxed',size=7)+
  geom_vline(xintercept=58, linetype="dotted")+
  annotate(geom="text",x=110,y=1300, label='Jun15\ninternational flights\nreopened',size=7)+
  geom_vline(xintercept=108, linetype="dotted",face = "bold")
g1=g1+ scale_x_continuous(breaks=seq(0,257,30), labels = dt)
ggplot2.two_y_axis(g1, g2)
