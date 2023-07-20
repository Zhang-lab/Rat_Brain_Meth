library(pheatmap)
data<-read.table("Fig2d_DEG_of_DG_CA_reverse_w_Zscore_Expression.txt",header = T)
pheatmap(data[,3:ncol(data)],cluster_rows = F,cluster_cols = F,fontsize = 7)

paletteLength <- 50
myColor <- colorRampPalette(c("navy", "white", "firebrick3"))(paletteLength)
myBreaks <- c(seq(-2, 0, length.out=ceiling(paletteLength/2) + 1),
              seq(4/paletteLength, max(f), length.out=floor(paletteLength/2)))
pheatmap(data[,2:3],cluster_rows = F,cluster_cols = F,breaks = myBreaks,color=myColor,fontsize = 7)
