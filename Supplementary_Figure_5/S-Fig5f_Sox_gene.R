d<-read.table("S-Fig5f_DG_Gene_expression.txt")
par(las=1)
boxplot(as.numeric(d["Sox5",5:8]),as.numeric(d["Sox5",9:12]),
        as.numeric(d["Sox11",5:8]),as.numeric(d["Sox11",9:12]),
        as.numeric(d["Sox18",5:8]),as.numeric(d["Sox18",9:12]),
        as.numeric(d["Sox8",5:8]),as.numeric(d["Sox8",9:12]),
        as.numeric(d["Sox10",5:8]),as.numeric(d["Sox10",9:12]),
        as.numeric(d["Sox7",5:8]),as.numeric(d["Sox7",9:12]),
        
        as.numeric(d["Sox6",5:8]),as.numeric(d["Sox6",9:12]),
        as.numeric(d["Sox13",5:8]),as.numeric(d["Sox13",9:12]),
        as.numeric(d["Sox17",5:8]),as.numeric(d["Sox17",9:12]),
        as.numeric(d["Sox12",5:8]),as.numeric(d["Sox12",9:12]),
        as.numeric(d["Sox9",5:8]),as.numeric(d["Sox9",9:12]),
        
        as.numeric(d["Sox21",5:8]),as.numeric(d["Sox21",9:12]),
        as.numeric(d["Sox2",5:8]),as.numeric(d["Sox2",9:12]),
        at=c(1,2,4,5,7,8,10,11,13,14,16,17,19,20,22,23,25,26,28,29,31,32,34,35,37,38),
        axes=F,col=c("darkgreen","purple")
)
axis(2)
axis(1,at=c(1.5,4.5,7.5,10.5,13.5,16.5,19.5,22.5,25.5,28.5,31.5,34.5,37.5),
     labels = c("Sox5","Sox11","Sox18","Sox8","Sox10","Sox7","Sox6",
                "Sox13","Sox17","Sox12","Sox9","Sox21","Sox2"))
legend(0.1,80,"METH",bty="n",pch=15,col="purple",xjust=0,cex=1)
legend(0.1,70,"Sal",bty="n",pch=15,col="darkgreen",xjust=0,cex=1)



