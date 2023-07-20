library(pheatmap)
data<-read.table("Fig1d.Region_sepcific_expressed_Gene_cpm_Zscore.txt",header = T)
pheatmap(data,cluster_rows = F,cluster_cols = F,show_rownames = F,fontsize = 8)