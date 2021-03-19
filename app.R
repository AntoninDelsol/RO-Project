## Importation des données en skippant les deux premières lignes
#donnees <- read.table(file.choose(), sep=" ",skip=2)
## Pour supprimer la dernière colonne (n°103) dont les valeurs sont NA 
#donnees <- donnees[,colSums(is.na(donnees))<nrow(donnees)]
#
## fournisseurs_choisis doit être un sous-ensemble de lignes de données
#eval = function(fournisseurs_choisis){
#  ouverture <- sum(fournisseurs_choisis[2],na.rm = TRUE)
#  cout_clients <- 0
#  for (j in 3:ncol(fournisseurs_choisis)) {
#    cout_clients <- cout_clients+min(fournisseurs_choisis[j])
#  }
#  return (ouverture+cout_clients)
#}
#
#
#algog = function(fournisseurs_choisis){
#  o <- data.frame(matrix(Inf, ncol = length(fournisseurs_choisis), nrow = 1))
#  colnames(o)<-colnames(fournisseurs_choisis)
#  while (eval(fournisseurs_choisis)<eval(o))
#  {
#    fournisseurs_choisis<-fournisseurs_choisis
#    choix <- data.frame()
#    if(o[,1]!=Inf)
#    {
#      for (i in 1:nrow(fournisseurs_choisis)) {
#      union<-rbind(o,fournisseurs_choisis[i,])
#      j<-eval(union)
#      choix[i,1]<-c(i)
#      choix[i,2]<-c(j)
#      }
#      m<-data.frame(t(choix[which.min(choix[,2]),]))
#      u<-fournisseurs_choisis[m[1,1],]
#      o<-rbind(o,u)
#    }
#    else
#    {
#      for (i in 1:nrow(fournisseurs_choisis)) {
#        j<-eval(fournisseurs_choisis[i,])
#        choix[i,1]<-c(i)
#        choix[i,2]<-c(j)
#      }
#      m<-data.frame(t(choix[which.min(choix[,2]),]))
#      o<-fournisseurs_choisis[m[1,1],]
#    }
#    fournisseurs_choisis<-fournisseurs_choisis[-c(o[,1]),] 
#  }
#  print(eval(o))
#  return (o)
#}
#
#heur= function(fournisseurs_choisis){
#  o<-algog(fournisseurs_choisis)
#  fc<-fournisseurs_choisis[-c(o[,1]),] 
#  for (i in 1:nrow(o)) {
#    for (j in 1:nrow(fc)) {
#      t<-rbind(o[i,],fc[j,])
#      delta<-eval(o)-eval(t)
#      if(delta>0)
#      {
#        n<-fc[j,]
#        o<-o[-c(o[,i]),] 
#        o<-rbind(o,n)
#      }
#    }
#  }
#  print(eval(o))
# #return (o)
#}
#
####

source('./read.r')
source('./algorithme glouton.r')
source('./heuristique.r')
source('./Glpk.R')
donnes<- read()
