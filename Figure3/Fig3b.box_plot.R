files<-list.files(pattern="Exp")

i<-3
data<-read.table(files[i],header = T)
dat<-data[,c(8:15)]
d<-na.omit(dat)
k3<-d
i<-2
data<-read.table(files[i],header = T)
dat<-data[,c(8:15)]
d<-na.omit(dat)
k2<-d
i<-1
data<-read.table(files[i],header = T)
dat<-data[,c(8:15)]
d<-na.omit(dat)
k1<-d
k1<-k1[,c(1,2,5,6,3,4,7,8)]
i<-4
data<-read.table(files[i],header = T)
dat<-data[,c(8:15)]
d<-na.omit(dat)
k4<-d

f1<-c();f2<-c();f3<-c();f4<-c()
for(i in 1:length(k1[,1])){a<-as.numeric(k1[i,]);b<-(a-mean(a))/sd(a);f1<-rbind(f1,b)}
for(i in 1:length(k2[,1])){a<-as.numeric(k2[i,]);b<-(a-mean(a))/sd(a);f2<-rbind(f2,b)}
for(i in 1:length(k3[,1])){a<-as.numeric(k3[i,]);b<-(a-mean(a))/sd(a);f3<-rbind(f3,b)}
for(i in 1:length(k4[,1])){a<-as.numeric(k4[i,]);b<-(a-mean(a))/sd(a);f4<-rbind(f4,b)}
rownames(f1)<-rownames(k1);colnames(f1)<-colnames(k1);f1<-as.data.frame(f1)
rownames(f2)<-rownames(k2);colnames(f2)<-colnames(k2);f2<-as.data.frame(f2)
rownames(f3)<-rownames(k3);colnames(f3)<-colnames(k3);f3<-as.data.frame(f3)
rownames(f4)<-rownames(k4);colnames(f4)<-colnames(k4);f4<-as.data.frame(f4)

x1<-as.data.frame(as.numeric(c(f1[,1],f1[,2],f1[,3],f1[,4])));colnames(x1)<-"Exp";x1$Type<-"Sal";x1$Group<-"CA"
y1<-as.data.frame(as.numeric(c(f1[,5],f1[,6],f1[,7],f1[,8])));colnames(y1)<-"Exp";y1$Type<-"METH";y1$Group<-"CA"
x2<-as.data.frame(as.numeric(c(f2[,1],f2[,2],f2[,3],f2[,4])));colnames(x2)<-"Exp";x2$Type<-"Sal";x2$Group<-"DG"
y2<-as.data.frame(as.numeric(c(f2[,5],f2[,6],f2[,7],f2[,8])));colnames(y2)<-"Exp";y2$Type<-"METH";y2$Group<-"DG"
x3<-as.data.frame(as.numeric(c(f3[,1],f3[,2],f3[,3],f3[,4])));colnames(x3)<-"Exp";x3$Type<-"Sal";x3$Group<-"NAc"
y3<-as.data.frame(as.numeric(c(f3[,5],f3[,6],f3[,7],f3[,8])));colnames(y3)<-"Exp";y3$Type<-"METH";y3$Group<-"NAc"
x4<-as.data.frame(as.numeric(c(f4[,1],f4[,2],f4[,3],f4[,4])));colnames(x4)<-"Exp";x4$Type<-"Sal";x4$Group<-"SVZ"
y4<-as.data.frame(as.numeric(c(f4[,5],f4[,6],f4[,7],f4[,8])));colnames(y4)<-"Exp";y4$Type<-"METH";y4$Group<-"SVZ"

z<-rbind(x1,y1,x2,y2,x3,y3,x4,y4)
ggplot(z, aes(x=Group, y=Exp, fill=Type)) +
  geom_boxplot()+
  theme_classic()