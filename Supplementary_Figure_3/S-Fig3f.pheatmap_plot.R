library(pheatmap)
data<-read.table("S-Fig3f_DAR_reverse_between_DG_CA_ATACseq_Zscore.txt")
pheatmap(f,cluster_cols = F,show_rownames = F)