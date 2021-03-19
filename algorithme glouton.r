algog = function(fournisseurs_choisis){
  o <- data.frame(matrix(Inf, ncol = length(fournisseurs_choisis), nrow = 1))
  colnames(o)<-colnames(fournisseurs_choisis)
  while (eval(fournisseurs_choisis)<eval(o))
  {
    choix <- data.frame()
    if(o[,1]!=Inf)
    {
      for (i in 1:nrow(fournisseurs_choisis)) {
      union<-rbind(o,fournisseurs_choisis[i,])
      j<-eval(union)
      choix[i,1]<-c(i)
      choix[i,2]<-c(j)
      }
      m<-data.frame(t(choix[which.min(choix[,2]),]))
      u<-fournisseurs_choisis[m[1,1],]
      o<-rbind(o,u)
    }
    else
    {
      for (i in 1:nrow(fournisseurs_choisis)) {
        j<-eval(fournisseurs_choisis[i,])
        choix[i,1]<-c(i)
        choix[i,2]<-c(j)
      }
      m<-data.frame(t(choix[which.min(choix[,2]),]))
      o<-fournisseurs_choisis[m[1,1],]
    }
    fournisseurs_choisis<-fournisseurs_choisis[-c(o[,1]),] 
  }
  print(eval(o))
  
  return (o)
}
