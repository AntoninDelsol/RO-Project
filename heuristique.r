heur= function(fournisseurs_choisis){
  o<-algog(fournisseurs_choisis)
  fc<-fournisseurs_choisis[-c(o[,1]),] 
  for (i in 1:nrow(o)) {
    for (j in 1:nrow(fc)) {
      delta<-eval(o)-eval(fc)
      if(delta>0)
      {
        n<-fc[j,]
        o<-o[-c(o[,i]),] 
        o<-rbind(o,n)
      }
    }
  }
  return (o)
}