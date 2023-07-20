library(ggplot2)
require("ggrepel")
data<-read.table("Fig4e_DAR_enhancer_Gene_Exp.txt",header = T)
f<-data
f$Significant <- ifelse(f$Exp_FDR < 0.05 & (f$DAR_logFC*f$Exp_logFC > 0), "FDR < 0.05", "Not Sig")

ggplot(f, aes(x = (-1)*DAR_logFC, y = (-1)*Exp_logFC, shape = Region,size=-log10(Exp_FDR)))+
  geom_hline(yintercept=0, linetype="dashed")+
  geom_vline(xintercept = 0, linetype="dashed")+
  geom_point(aes(color = Significant))+
  scale_color_manual(values = c("red", "grey")) +
  coord_cartesian(xlim = c(-3, 3))+
  scale_shape_manual(values = c(1,0, 3,2))+
  xlab("Enhancer DAR: log2FC") +
  ylab("Enhancer DAR associated genes: log2FC") +
  theme_classic()+
  geom_text_repel(data = subset(f, Significant=="FDR < 0.05"),
                  aes(label = Gene),size = 2.5)