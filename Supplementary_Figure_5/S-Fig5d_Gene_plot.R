data<-read.table("S-Fig5d_Drd_Egr_Gene_expression_inNAc.txt")
#Drd1~Egr1
c<-round(cor(as.numeric(data["Egr1",]),as.numeric(data["Drd1",]),method ="pearson"),2)
plot(as.numeric(data["Egr1",1:8]),as.numeric(data["Drd1",1:8]),pch=20,
     xlim=c(0,200),ylim=c(0,350),xlab="Egr1",ylab="Drd1",main=paste0("Cor: ",c),
     col=c(rep("black",4),rep("red",4)))
abline(lm(as.numeric(data["Drd1",1:8])~as.numeric(data["Egr1",1:8])),col="blue")
#Drd1~Egr2
c<-round(cor(as.numeric(data["Egr2",]),as.numeric(data["Drd1",]),method ="pearson"),2)
plot(as.numeric(data["Egr2",1:8]),as.numeric(data["Drd1",1:8]),pch=20,
     xlim=c(0,8),ylim=c(0,350),xlab="Egr2",ylab="Drd1",main=paste0("Cor: ",c),
     col=c(rep("black",4),rep("red",4)))
abline(lm(as.numeric(data["Drd1",1:8])~as.numeric(data["Egr2",1:8])),col="blue")
#Drd1~Egr3
c<-round(cor(as.numeric(data["Egr3",]),as.numeric(data["Drd1",]),method ="pearson"),2)
plot(as.numeric(data["Egr3",1:8]),as.numeric(data["Drd1",1:8]),pch=20,
     xlim=c(0,100),ylim=c(0,350),xlab="Egr3",ylab="Drd1",main=paste0("Cor: ",c),
     col=c(rep("black",4),rep("red",4)))
abline(lm(as.numeric(data["Drd1",1:8])~as.numeric(data["Egr3",1:8])),col="blue")
#Drd1~Egr4
c<-round(cor(as.numeric(data["Egr4",]),as.numeric(data["Drd1",]),method ="pearson"),2)
plot(as.numeric(data["Egr4",1:8]),as.numeric(data["Drd1",1:8]),pch=20,
     xlim=c(0,25),ylim=c(0,350),xlab="Egr4",ylab="Drd1",main=paste0("Cor: ",c),
     col=c(rep("black",4),rep("red",4)))
abline(lm(as.numeric(data["Drd1",1:8])~as.numeric(data["Egr4",1:8])),col="blue")

#Drd2~Egr1
c<-round(cor(as.numeric(data["Egr1",]),as.numeric(data["Drd2",]),method ="pearson"),2)
plot(as.numeric(data["Egr1",1:8]),as.numeric(data["Drd2",1:8]),pch=20,
     xlim=c(0,200),ylim=c(0,200),xlab="Egr1",ylab="Drd2",main=paste0("Cor: ",c),
     col=c(rep("black",4),rep("red",4)))
abline(lm(as.numeric(data["Drd2",1:8])~as.numeric(data["Egr1",1:8])),col="blue")
#Drd2~Egr2
c<-round(cor(as.numeric(data["Egr2",]),as.numeric(data["Drd2",]),method ="pearson"),2)
plot(as.numeric(data["Egr2",1:8]),as.numeric(data["Drd2",1:8]),pch=20,
     xlim=c(0,8),ylim=c(0,200),xlab="Egr2",ylab="Drd2",main=paste0("Cor: ",c),
     col=c(rep("black",4),rep("red",4)))
abline(lm(as.numeric(data["Drd2",1:8])~as.numeric(data["Egr2",1:8])),col="blue")
#Drd2~Egr3
c<-round(cor(as.numeric(data["Egr3",]),as.numeric(data["Drd2",]),method ="pearson"),2)
plot(as.numeric(data["Egr3",1:8]),as.numeric(data["Drd2",1:8]),pch=20,
     xlim=c(0,100),ylim=c(0,200),xlab="Egr3",ylab="Drd2",main=paste0("Cor: ",c),
     col=c(rep("black",4),rep("red",4)))
abline(lm(as.numeric(data["Drd2",1:8])~as.numeric(data["Egr3",1:8])),col="blue")
#Drd2~Egr4
c<-round(cor(as.numeric(data["Egr4",]),as.numeric(data["Drd2",]),method ="pearson"),2)
plot(as.numeric(data["Egr4",1:8]),as.numeric(data["Drd2",1:8]),pch=20,
     xlim=c(0,25),ylim=c(0,200),xlab="Egr4",ylab="Drd2",main=paste0("Cor: ",c),
     col=c(rep("black",4),rep("red",4)))
abline(lm(as.numeric(data["Drd2",1:8])~as.numeric(data["Egr4",1:8])),col="blue")


