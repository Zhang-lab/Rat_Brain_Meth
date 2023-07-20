library(ggplot2)
NAc<-read.table("DistanceTSS_Region_ctrl_NAc_other_DAR.txt");
DG<-read.table("DistanceTSS_Region_ctrl_DG_other_DAR.txt");
CA<-read.table("DistanceTSS_Region_ctrl_CA_other_DAR.txt");
SVZ<-read.table("DistanceTSS_Region_ctrl_SVZ_other_DAR.txt");

a<-boxplot(as.numeric(NAc$V2/1000),as.numeric(DG$V2/1000),
           as.numeric(CA$V2/1000),as.numeric(SVZ$V2/1000),
           col=c("darkgreen","cyan","red","yellow"),
           names = c("NAc","DG","CA","SVZ"),outline = F)

