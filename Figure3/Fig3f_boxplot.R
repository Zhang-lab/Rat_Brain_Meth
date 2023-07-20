data<-read.table("Fig3f_example_gene_expression.txt",header = T)
par(las=1)
a<-boxplot(as.numeric(data[1,2:5]),as.numeric(data[1,6:9]),as.numeric(data[1,10:13]),ylim=c(250,500),
        as.numeric(data[1,14:17]),main="Ptprn2",at=c(1,2,4,5),axes=F,col=c("darkgreen","purple"))
axis(2)
axis(1,at=c(1.5,4.5),labels = c("DG","CA"))
legend(0.5,500,"METH",bty="n",pch=15,col="purple",xjust=0,cex=1)
legend(0.5,480,"Sal",bty="n",pch=15,col="darkgreen",xjust=0,cex=1)

par(las=1)
b<-boxplot(as.numeric(data[2,2:5]),as.numeric(data[2,6:9]),as.numeric(data[2,10:13]),ylim=c(120,400),
           as.numeric(data[2,14:17]),main="Tenm4",at=c(1,2,4,5),axes=F,col=c("darkgreen","purple"))
axis(2)
axis(1,at=c(1.5,4.5),labels = c("DG","CA"))
legend(0.5,400,"METH",bty="n",pch=15,col="purple",xjust=0,cex=1)
legend(0.5,380,"Sal",bty="n",pch=15,col="darkgreen",xjust=0,cex=1)

par(las=1)
c<-boxplot(as.numeric(data[3,2:5]),as.numeric(data[3,6:9]),as.numeric(data[3,10:13]),ylim=c(70,100),
           as.numeric(data[3,14:17]),main="Etv5",at=c(1,2,4,5),axes=F,col=c("darkgreen","purple"))
axis(2)
axis(1,at=c(1.5,4.5),labels = c("DG","CA"))
legend(0.5,105,"METH",bty="n",pch=15,col="purple",xjust=0,cex=1)
legend(0.5,100,"Sal",bty="n",pch=15,col="darkgreen",xjust=0,cex=1)


