library(plotly)
library(ggplot2)
library(ggpubr)
library(RUVSeq)
###RNA
data<-read.table("Gene_reads_count_table_RUVrk3.txt",header=T)
da<-cpm(data+1)
names<-colnames(da)
m<-t(log2(da))
pca<-prcomp(m,scale. = T)
pca_plot<-as.data.frame(pca$x[,1:3])
pca_plot$name<-rownames(m)
pca_plot$Region<-c(rep("NAc",8),rep("DG",8),rep("CA",8),rep("SVZ",8))
pca_plot$Drug<-c(rep("Sal",4),rep("Meth",4),rep("Sal",4),rep("Meth",4),
                 rep("Sal",4),rep("Meth",4),rep("Sal",4),rep("Meth",4))
sdev_df <- data.frame(components = paste0("PC", 1:length(pca$sdev)), value = pca$sdev ** 2)
sdev_df$value <- sdev_df$value / sum(sdev_df$value) * 100
pca_plot$pc1_perc <- sdev_df$value[1] %>% round(., digits = 2)
pca_plot$pc2_perc <- sdev_df$value[2] %>% round(., digits = 2)
pca_plot$pc3_perc <- sdev_df$value[3] %>% round(., digits = 2)
#2D
p1 <- ggplot(pca_plot, aes(x = PC1, y = PC2, col = Region, shape = Drug)) +
  geom_point(size = 3) +
  xlab(paste0("PC1 (", unique(pca_plot$pc1_perc), "%)")) +
  ylab(paste0("PC2 (", unique(pca_plot$pc2_perc), "%)")) +
  scale_shape_manual(values = c(4, 19)) +
  theme(legend.text=element_text(size=14))
p2 <- ggplot(pca_plot, aes(x = PC1, y = PC3, col = Region, shape = Drug)) +
  geom_point(size = 3) +
  xlab(paste0("PC1 (", unique(pca_plot$pc1_perc), "%)")) +
  ylab(paste0("PC3 (", unique(pca_plot$pc3_perc), "%)")) +
  scale_shape_manual(values = c(4, 19)) +
  theme(legend.text=element_text(size=14))
ggarrange(p1, p2, nrow = 2)

###ATAC
data<-read.table("ATAC_OCRs_count_table_usedforPCA.txt",header=T)
da<-cpm(data+1)
names<-colnames(da)
m<-t(log2(da))
pca<-prcomp(m,scale. = T)
pca_plot<-as.data.frame(pca$x[,1:3])
pca_plot$name<-rownames(m)
pca_plot$Region<-c(rep("NAc",8),rep("DG",8),rep("CA",8),rep("SVZ",5))
pca_plot$Drug<-c(rep("Sal",4),rep("Meth",4),rep("Sal",4),rep("Meth",4),
                 rep("Sal",4),rep("Meth",4),rep("Sal",3),rep("Meth",2))
sdev_df <- data.frame(components = paste0("PC", 1:length(pca$sdev)), value = pca$sdev ** 2)
sdev_df$value <- sdev_df$value / sum(sdev_df$value) * 100
pca_plot$pc1_perc <- sdev_df$value[1] %>% round(., digits = 2)
pca_plot$pc2_perc <- sdev_df$value[2] %>% round(., digits = 2)
pca_plot$pc3_perc <- sdev_df$value[3] %>% round(., digits = 2)
#2D
p1 <- ggplot(pca_plot, aes(x = PC1, y = PC2, col = Region, shape = Drug)) +
  geom_point(size = 3) +
  xlab(paste0("PC1 (", unique(pca_plot$pc1_perc), "%)")) +
  ylab(paste0("PC2 (", unique(pca_plot$pc2_perc), "%)")) +
  scale_shape_manual(values = c(4, 19)) +
  theme(legend.text=element_text(size=14))
p2 <- ggplot(pca_plot, aes(x = PC1, y = PC3, col = Region, shape = Drug)) +
  geom_point(size = 3) +
  xlab(paste0("PC1 (", unique(pca_plot$pc1_perc), "%)")) +
  ylab(paste0("PC3 (", unique(pca_plot$pc3_perc), "%)")) +
  scale_shape_manual(values = c(4, 19)) +
  theme(legend.text=element_text(size=14))
ggarrange(p1, p2, nrow = 2)



