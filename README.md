# RO-Project
# Lecture des fichiers et fonction d'évaluation

Pour la lecture du fichier, on utililse la fonction read.table avec l'option skip pour ignorer les deux premières lignes.
L'utilisateur pourra choisir quel fichier lire grâce à la fonction file.choose().
La lecture du fichier retourne un dataframe avec une colonne vide à la fin qui sera supprimée.

Pour la fonction éval, on implémente la formule donnée dans le sujet.
- Le paramètre d'entrée doit être un dataframe contenant un sous-ensemble de ligne des données initiales
- La sortie est un nombre.
