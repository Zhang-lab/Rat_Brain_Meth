data<-read.table("S-Fig2b_DEG_shared_3tissue_logFC_FDR.txt")
f<-c()
da1<-data[,c(1,2,6)];colnames(da1)<-c("Gene","LogFC","FDR");da1$Region<-"CA"
da2<-data[,c(1,3,7)];colnames(da2)<-c("Gene","LogFC","FDR");da2$Region<-"DG"
da3<-data[,c(1,4,8)];colnames(da3)<-c("Gene","LogFC","FDR");da3$Region<-"NAc"
da4<-data[,c(1,5,9)];colnames(da4)<-c("Gene","LogFC","FDR");da4$Region<-"SVZ"
f<-rbind(da1,da2,da3,da4)
mid<-0
ggplot(f,aes(x=Region, y=Gene, size = -log10(FDR), col =LogFC ))+ 
  geom_point(alpha=1) +
  scale_color_gradient2(midpoint=mid, low="navy", mid="white", high="firebrick3" ) + 
  scale_size(range = c(0.01, 3))+
  scale_x_discrete(limits=c("NAc","DG","CA","SVZ"))+
  scale_y_discrete(limits=rownames(data))+
  theme(axis.text.x = element_text(angle = 90, hjust = 1, size=8,vjust = 0.5), 
        axis.text.y = element_text(size=8),
        axis.title.x = element_blank(),
        axis.title.y = element_blank(),
        panel.border = element_rect( colour = "black", fill = NA, size=0.6),
        strip.text.x = element_text(size=6),
        legend.title = element_text(size = 8),
        legend.position="top",
        panel.grid.minor = element_blank(), panel.background = element_blank())
