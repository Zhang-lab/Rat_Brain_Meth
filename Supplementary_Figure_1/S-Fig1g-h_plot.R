data<-read.table("Region_ctrl_DAR_NAc_other_RUVr_k3.txt",header = T)
plot((-1)*data$logFC,-log10(data$FDR),pch=20,col="grey",xlab="log2FC",ylab="-log10(FDR)",main="NAc")
d1<-data[data$logFC<(-1) & data$FDR<0.01,]
points((-1)*d1$logFC,-log10(d1$FDR),pch=20,col="red")
d2<-data[data$logFC>1 & data$FDR<0.01,]
points((-1)*d2$logFC,-log10(d2$FDR),pch=20,col="blue")
abline(h=-log10(0.01),lty=2)
abline(v=1,lty=2)
abline(v=-1,lty=2)