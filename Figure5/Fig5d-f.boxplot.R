#fig5d
data<-read.table("Fig5d_boxplot_Gene_expression_inNAc.txt")
par(las=1)
a<-boxplot(as.numeric(data[1,5:8]),as.numeric(data[1,9:12]),
        as.numeric(data[2,5:8]),as.numeric(data[2,9:12]),
        at=c(1,2,4,5),axes=F,col=c("darkgreen","purple"))
axis(2)
axis(1,at=c(1.5,4.5),labels = c("Drd1","Drd2"))
legend(3,320,"METH",bty="n",pch=15,col="purple",xjust=0,cex=1)
legend(3,300,"Sal",bty="n",pch=15,col="darkgreen",xjust=0,cex=1)

par(las=1)
b<-boxplot(as.numeric(data[3,5:8]),as.numeric(data[3,9:12]),
        as.numeric(data[4,5:8]),as.numeric(data[4,9:12]),
        as.numeric(data[5,5:8]),as.numeric(data[5,9:12]),
        as.numeric(data[6,5:8]),as.numeric(data[6,9:12]),
        at=c(1,2,4,5,7,8,10,11),axes=F,col=c("darkgreen","purple"))
axis(2)
axis(1,at=c(1.5,4.5,7.5,10.5),labels = c("Egr1","Egr2","Egr3","Egr4"))
legend(8,120,"METH",bty="n",pch=15,col="purple",xjust=0,cex=1)
legend(8,100,"Sal",bty="n",pch=15,col="darkgreen",xjust=0,cex=1)

#fig5e
data<-read.table("Fig5e_boxplot_OCR_ATAC_signal_inNAc.txt")
par(las=1)
a<-boxplot(as.numeric(data[1,5:8]),as.numeric(data[1,9:12]),
        as.numeric(data[2,5:8]),as.numeric(data[2,9:12]),
        as.numeric(data[3,5:8]),as.numeric(data[3,9:12]),
        at=c(1,2,4,5,7,8),axes=F,col=c("darkgreen","purple"))
axis(2)
axis(1,at=c(1.5,4.5,7.5),labels = c("R1","R2","R3"))
legend(0.5,20,"METH",bty="n",pch=15,col="purple",xjust=0,cex=1)
legend(0.5,18,"Sal",bty="n",pch=15,col="darkgreen",xjust=0,cex=1)

#fig5f
data<-read.table("Fig5f_boxplot_OCR_ATAC_signal_inNAc.txt")
par(las=1)
b<-boxplot(as.numeric(data[1,5:8]),as.numeric(data[1,9:12]),
           as.numeric(data[2,5:8]),as.numeric(data[2,9:12]),
           as.numeric(data[3,5:8]),as.numeric(data[3,9:12]),
           as.numeric(data[4,5:8]),as.numeric(data[4,9:12]),
           as.numeric(data[5,5:8]),as.numeric(data[5,9:12]),
           at=c(1,2,4,5,7,8,10,11,13,14),axes=F,col=c("darkgreen","purple"))
axis(2)
axis(1,at=c(1.5,4.5,7.5,10.5,13.5),labels = c("R1","R2","R3","R4","R5"))
legend(0.5,7,"METH",bty="n",pch=15,col="purple",xjust=0,cex=1)
legend(0.5,6.5,"Sal",bty="n",pch=15,col="darkgreen",xjust=0,cex=1)









