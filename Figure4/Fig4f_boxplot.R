library(ggplot2)
data<-read.table("Fig4f_St18_Sdk2_gene_expression.txt",header = T)

ggplot(data, aes(x=Region, y=St18, color=Drug)) +
  geom_boxplot(position=position_dodge(0.5),width=0.4)+
  scale_x_discrete(limits=c("NAc","DG","CA","SVZ"))+
  labs(title="St18",x="")+ 
  theme_classic()+
  theme(plot.title = element_text(hjust = 0.5))

ggplot(data, aes(x=Region, y=Sdk2, color=Drug)) +
  geom_boxplot(position=position_dodge(0.5),width=0.4)+
  scale_x_discrete(limits=c("NAc","DG","CA","SVZ"))+
  labs(title="Sdk2",x="")+ 
  theme_classic()+
  theme(plot.title = element_text(hjust = 0.5))