data<-read.csv("Fig3d/Fig3d_DAR_reverse_between_DG_CA.txt",sep="\t",header = T)
plot(data$DG_logFC,data$CA_logFC,pch=20,col="grey",xlim=c(-2,1),ylim=c(-1,2),
     xlab="DG:log2FC",ylab="CA:log2FC",lwd=2.5)
files<-list.files(path="Fig3d",pattern="GO")
l1<-read.csv(paste0("Fig3d/",files[1]),sep="\t",header = F);l1<-paste(l1$V1,(l1$V2-1),l1$V3,sep=",")
l2<-read.csv(paste0("Fig3d/",files[2]),sep="\t",header = F);l2<-paste(l2$V1,(l2$V2-1),l2$V3,sep=",")
l3<-read.csv(paste0("Fig3d/",files[3]),sep="\t",header = F);l3<-paste(l3$V1,(l3$V2-1),l3$V3,sep=",")
l4<-read.csv(paste0("Fig3d/",files[4]),sep="\t",header = F);l4<-paste(l4$V1,(l4$V2-1),l4$V3,sep=",")
l5<-read.csv(paste0("Fig3d/",files[5]),sep="\t",header = F);l5<-paste(l5$V1,(l5$V2-1),l5$V3,sep=",")
l6<-read.csv(paste0("Fig3d/",files[6]),sep="\t",header = F);l6<-paste(l6$V1,(l6$V2-1),l6$V3,sep=",")
l7<-read.csv(paste0("Fig3d/",files[7]),sep="\t",header = F);l7<-paste(l7$V1,(l7$V2-1),l7$V3,sep=",")
x<-c(l1,l2,l3,l4,l6)
y<-l7
z<-l5
x<-x[!(duplicated(x))]
y<-y[!(duplicated(y))]
z<-z[!(duplicated(z))]
points(d[z,1],d[z,2],pch=20,col="purple",lwd=2.5)
points(d[y,1],d[y,2],pch=20,col="blue",lwd=2.5)
points(d[x,1],d[x,2],pch=20,col="orange",lwd=2.5)


