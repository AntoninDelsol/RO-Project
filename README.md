# RO-Project
## Répartition du travail et difficultés rencontrées

Le travail a été réparti au début du projet.
Les membres du groupe se sont mis d'accord sur cette répartition :
- Questions 1 et 2  - Stan
- Questions 3 et 4 - Mélanie
- Questions 5 et 6 - Antonin

Une fois la répartition faite, nous avons pu commencer à travailler sur le projet.

## Lecture des fichiers et fonction d'évaluation

Pour la lecture du fichier, on utililse la fonction read.table avec l'option skip pour ignorer les deux premières lignes.
L'utilisateur pourra choisir quel fichier lire grâce à la fonction file.choose().
La lecture du fichier retourne un dataframe avec une colonne vide à la fin qui sera supprimée.

Pour la fonction éval, on implémente la formule donnée dans le sujet.
- Le paramètre d'entrée doit être un dataframe contenant un sous-ensemble de ligne des données initiales
- La sortie est un nombre.

Pour la fonction algog(algorithme glouton), on prend en paramètre le data.frame des données qui nous retournera l'ensemble O de fournisseurs ouverts.

Pour la fonction heur(heuristique de recherche locale), on prend en paramètre le data.frame des données qui nous retournera l'ensemble O de fournisseurs ouverts avec une meileure solution.
