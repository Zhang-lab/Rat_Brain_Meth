files<-list.files(path="Fig1f",pattern="overlap")
NAc_list<-read.table(paste0("Fig1f/",files[3]));
DG_list<-read.table(paste0("Fig1f/",files[2]));
CA_list<-read.table(paste0("Fig1f/",files[1]));
SVZ_list<-read.table(paste0("Fig1f/",files[4]));
#ATAC
CA<-read.table("Fig1f/Fig1f.ATAC_Control_CA_vs_other.txt")
DG<-read.table("Fig1f/Fig1f.ATAC_Control_DG_vs_other.txt")
NAc<-read.table("Fig1f/Fig1f.ATAC_Control_NAc_vs_other.txt")
SVZ<-read.table("Fig1f/Fig1f.ATAC_Control_SVZ_vs_other.txt")
l<-paste(NAc_list$V1,NAc_list$V2,NAc_list$V3,sep=",");d1<-NAc[l,]
l<-paste(DG_list$V1,DG_list$V2,DG_list$V3,sep=",");d2<-DG[l,]
l<-paste(CA_list$V1,CA_list$V2,CA_list$V3,sep=",");d3<-CA[l,]
l<-paste(SVZ_list$V1,SVZ_list$V2,SVZ_list$V3,sep=",");d4<-SVZ[l,]
#RNA-seq
NAc_Exp<-read.table("Fig1f/Fig1f.RNA_Gene_NAc_vs_other.txt")
DG_Exp<-read.table("Fig1f/Fig1f.RNA_Gene_DG_vs_other.txt")
CA_Exp<-read.table("Fig1f/Fig1f.RNA_Gene_CA_vs_other.txt")
SVZ_Exp<-read.table("Fig1f/Fig1f.RNA_Gene_SVZ_vs_other.txt")
l<-as.character(NAc_list$V4);f1<-NAc_Exp[l,]
l<-as.character(DG_list$V4);f2<-DG_Exp[l,]
l<-as.character(CA_list$V4);f3<-CA_Exp[l,]
l<-as.character(SVZ_list$V4);f4<-SVZ_Exp[l,]
#dot plot
par(mfrow=c(2,2))
#NAc
f<-f1;d<-d1
plot((-1)*f$logFC,(-1)*d$logFC,xlab = "Expression of NAc-specific genes:log2FC", 
     ylab="ATAC-seq signal density of promoter:log2FC",pch=20,col="grey",main = "NAc")
abline(h=0,lty=2,col="blue"); abline(v=0,lty=2,col="blue")
points((-1)*f[d$FDR<0.05,]$logFC,(-1)*d[d$FDR<0.05,]$logFC,col="darkgreen",pch=20)
x<-round(cor((-1)*f$logFC,(-1)*d$logFC),2)
y<-round(cor((-1)*f[d$FDR<0.05,]$logFC,(-1)*d[d$FDR<0.05,]$logFC),2)
legend("topleft",paste0("r=",y),title = "correlation",cex=0.8,bty="n")
#DG
f<-f2;d<-d2
plot((-1)*f$logFC,(-1)*d$logFC,xlab = "Expression of DG-specific genes:log2FC", 
     ylab="ATAC-seq signal density of promoter:log2FC",pch=20,col="grey",main = "DG")
abline(h=0,lty=2,col="blue"); abline(v=0,lty=2,col="blue")
points((-1)*f[d$FDR<0.05,]$logFC,(-1)*d[d$FDR<0.05,]$logFC,col="blue",pch=20)
x<-round(cor((-1)*f$logFC,(-1)*d$logFC),2)
y<-round(cor((-1)*f[d$FDR<0.05,]$logFC,(-1)*d[d$FDR<0.05,]$logFC),2)
legend("topleft",paste0("r=",y),title = "correlation",cex=0.8,bty="n")
#CA
f<-f3;d<-d3
plot((-1)*f$logFC,(-1)*d$logFC,xlab = "Expression of CA-specific genes:log2FC", 
     ylab="ATAC-seq signal density of promoter:log2FC",pch=20,col="grey",main = "CA")
abline(h=0,lty=2,col="blue"); abline(v=0,lty=2,col="blue")
points((-1)*f[d$FDR<0.05,]$logFC,(-1)*d[d$FDR<0.05,]$logFC,col="red",pch=20)
x<-round(cor((-1)*f$logFC,(-1)*d$logFC),2)
y<-round(cor((-1)*f[d$FDR<0.05,]$logFC,(-1)*d[d$FDR<0.05,]$logFC),2)
legend("topleft",paste0("r=",y),title = "correlation",cex=0.8,bty="n")
#SVZ
f<-f4;d<-d4
plot((-1)*f$logFC,(-1)*d$logFC,xlab = "Expression of SVZ-specific genes:log2FC", 
     ylab="ATAC-seq signal density of promoter:log2FC",pch=20,col="grey",main = "NAc")
abline(h=0,lty=2,col="blue"); abline(v=0,lty=2,col="blue")
points((-1)*f[d$FDR<0.05,]$logFC,(-1)*d[d$FDR<0.05,]$logFC,col="yellow",pch=20)
x<-round(cor((-1)*f$logFC,(-1)*d$logFC),2)
y<-round(cor((-1)*f[d$FDR<0.05,]$logFC,(-1)*d[d$FDR<0.05,]$logFC),2)
legend("topleft",paste0("r=",y),title = "correlation",cex=0.8,bty="n")





