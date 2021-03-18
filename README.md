---
output:
  word_document: default
  pdf_document: default
  html_document: default
---
# RO-Project
## Répartition du travail et difficultés rencontrées

Le travail a été réparti au début du projet.
Les membres du groupe se sont mis d'accord sur cette répartition :

- Questions 1 et 2  - Stan

- Questions 3 et 4 - Mélanie

- Questions 5 et 6 - Antonin

Lors de la question 5, j'ai créer un modèle permettant de resoudre le problème en l'executant localement grace au solver GLPK la solution retourné est la bonne confirmant que le fichier .mod est correct, mais lorsque l'on passe par l'API R le solver ne retourne plus le bon resultat. Les 2 solver etant pourtant bien le simplex, je comprends pas d'où vient l'écart.
L'API est plutot bien documenter mais très fourni difficile de trouvé ce que l'on cherche, par exemle je n'ai pas trouvé de fonction qui me retourne le resultat de la fonction z.

## Lecture des fichiers et fonction d'évaluation

Pour la lecture du fichier, on utililse la fonction read.table avec l'option skip pour ignorer les deux premières lignes.
L'utilisateur pourra choisir quel fichier lire grâce à la fonction file.choose().
La lecture du fichier retourne un dataframe avec une colonne vide à la fin qui sera supprimée.

Pour la fonction éval, on implémente la formule donnée dans le sujet.

- Le paramètre d'entrée doit être un dataframe contenant un sous-ensemble de ligne des données initiales.

- La sortie est un nombre.

Pour la fonction algog(algorithme glouton), on prend en paramètre le data.frame des données qui nous retournera l'ensemble O de fournisseurs ouverts.

Pour la fonction heur(heuristique de recherche locale), on prend en paramètre le data.frame des données qui nous retournera l'ensemble O de fournisseurs ouverts avec une meileure solution.

La fonction GLPK prend en paramètre un data.frame, preparer par la fonction Read, il retourne le resultat minimiser de la fonction z.