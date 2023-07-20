files<-list.files(pattern = "txt")
#NAc
f<-read.table(files[5]);
d<-read.table(files[6])
plot((-1)*f$logFC,(-1)*d$logFC,xlab = "DEG:logFC", ylab="DEG's promoter: logFC",
     pch=20,main = "NAc")
abline(h=0,lty=2,col="red"); abline(v=0,lty=2,col="red")
#DG
f<-read.table(files[3]);
d<-read.table(files[4])
plot((-1)*f$logFC,(-1)*d$logFC,xlab = "DEG:logFC", ylab="DEG's promoter: logFC",
     pch=20,main = "DG")
abline(h=0,lty=2,col="red"); abline(v=0,lty=2,col="red")
#CA
f<-read.table(files[1]);
d<-read.table(files[2])
plot((-1)*f$logFC,(-1)*d$logFC,xlab = "DEG:logFC", ylab="DEG's promoter: logFC",
     pch=20,main = "CA")
abline(h=0,lty=2,col="red"); abline(v=0,lty=2,col="red")
#SVZ
f<-read.table(files[7]);
d<-read.table(files[8])
plot((-1)*f$logFC,(-1)*d$logFC,xlab = "DEG:logFC", ylab="DEG's promoter: logFC",
     pch=20,main = "SVZ")
abline(h=0,lty=2,col="red"); abline(v=0,lty=2,col="red")

