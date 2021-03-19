<<<<<<< HEAD
heur= function(fournisseurs_choisis){
  o<-algog(fournisseurs_choisis)
  fc<-fournisseurs_choisis[-c(o[,1]),] 
  for (i in 1:nrow(o)) {
    for (j in 1:nrow(fc)) {
      t<-rbind(o[i,],fc[j,])
      delta<-eval(o)-eval(t)
      if(delta>0)
      {
        n<-fc[j,]
        o<-o[-c(o[,i]),] 
        o<-rbind(o,n)
      }
    }
  }
  print(eval(o))
  
  return (o)
}
=======
heur= function(fournisseurs_choisis){
  o<-algog(fournisseurs_choisis)
  fc<-fournisseurs_choisis[-c(o[,1]),] 
  for (i in 1:nrow(o)) {
    for (j in 1:nrow(fc)) {
      t<-rbind(o[i,],fc[j,])
      delta<-eval(o)-eval(t)
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
>>>>>>> f8a06bcf0e3a047a56e58c5be6f642b5c86db3d7
