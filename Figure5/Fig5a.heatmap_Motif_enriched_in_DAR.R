library(ggplot2)
data<-read.csv("Fig5a_Motif_enriched_in_DAR.txt",header = T,sep="\t")
ggplot(data,aes(x=Type, y=GENE, size = -log10(LogPvalue), col =Percent ))+ 
  geom_point(alpha=1) +
  scale_size(range = c(0.01, 3))+
  scale_color_gradient2( low="grey", mid="orange", high="red" ) + 
  theme(axis.text.x = element_text(angle = 90, hjust = 1, size=8,vjust = 0.5), 
        axis.text.y = element_text(size=8),
        axis.title.x = element_blank(),
        axis.title.y = element_blank(),
        panel.border = element_rect( colour = "black", fill = NA, size=0.6),
        strip.text.x = element_text(size=6),
        legend.title = element_text(size = 8),
        legend.position="top",
        panel.grid.minor = element_blank(), panel.background = element_blank())