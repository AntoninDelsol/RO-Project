###Force wd au dossier source de l'application pour pourvoir utiliser les chemins relatifs
setwd(dirname(rstudioapi::getActiveDocumentContext()$path))

source('./read.r')
source('./algorithme glouton.r')
source('./heuristique.r')
source('./Glpk.R')

donnes<- read()
df <- donnes[c(1,2,3),]
eval(df)
algog(donnes)
heur(donnes)
GLPK(donnes)
