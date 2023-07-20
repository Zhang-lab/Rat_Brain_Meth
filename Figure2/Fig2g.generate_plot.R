library(ggplot2)
list<-read.csv("Fig2g_DEG_EpiGene_inf.txt",sep="\t",header = F)
l<-as.character(list$V1)
f<-read.table("Fig2g_DEG_EpiGene_FC_and_FDR.txt",header = T)
mid<-0
ggplot(f,aes(x=Region, y=Gene, size = -log10(FDR), col =logFC ))+ 
  geom_point(alpha=1) +
  scale_color_gradient2(midpoint=mid, low="navy", mid="white", high="firebrick3" ) + 
  scale_size(range = c(0.01, 3))+
  scale_x_discrete(limits=c("NAc","DG","CA","SVZ"))+
  scale_y_discrete(limits=l[31:1])+
  theme(axis.text.x = element_text(angle = 90, hjust = 1, size=8,vjust = 0.5), 
        axis.text.y = element_text(size=8),
        axis.title.x = element_blank(),
        axis.title.y = element_blank(),
        panel.border = element_rect( colour = "black", fill = NA, size=0.6),
        strip.text.x = element_text(size=6),
        legend.title = element_text(size = 8),
        legend.position="top",
        panel.grid.minor = element_blank(), panel.background = element_blank())