# Importation des données en skippant les deux premières lignes
donnees <- read.table(file.choose(), sep=" ",skip=2)
# Pour supprimer la dernière colonne (n°103) dont les valeurs sont NA 
donnees <- donnees[,colSums(is.na(df))<nrow(df)]


# Pour tester eval
df <- donnees[c(1,2,3),]

# fournisseurs_choisis doit être un sous-ensemble de lignes de données (comme df)
eval <- function(fournisseurs_choisis){
  ouverture <- sum(fournisseurs_choisis[2],na.rm = TRUE)
  cout_clients <- 0
  for (j in 3:ncol(fournisseurs_choisis)) {
    cout_clients <- cout_clients+min(fournisseurs_choisis[j])
  }
  return (ouverture+cout_clients)
}
