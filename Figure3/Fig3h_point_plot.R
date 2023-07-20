library(ggplot2)
require("ggrepel")

files<-list.files(pattern="NAc")
data1<-read.table(files[1])
data2<-read.table(files[2])
da2<-data2[,c(1,15,14,18)]
da1<-data1[,c(1,15,14,18)]
d<-rbind(da1,da2)

d$Significant <- ifelse(d$FDR.1 < 0.05 & (d$logFC*d$logFC.1 > 0), "Gene FDR < 0.05", "Not Sig")

ggplot(d, aes(x = (-1)*logFC, y = (-1)*logFC.1 ))+
  geom_hline(yintercept=0, linetype="dashed")+
  geom_vline(xintercept = 0, linetype="dashed")+
  geom_point(aes(color = Significant))+
  scale_color_manual(values = c("darkgreen", "grey")) +
  xlab("ATAC-seq signal of promoter-DARs: log2FC") +
  ylab("Expression of genes assocaited with promtoer-DARs: log2FC") +
  theme_classic()+
  geom_text_repel(data = subset(d, Significant=="Gene FDR < 0.05"),
                  aes(label = V2),size = 2.5)


