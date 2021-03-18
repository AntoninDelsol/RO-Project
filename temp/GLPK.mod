# modèle GLPK.mod

param F; #nb de fournisseurs
param L; #nb de clients

param M {f in 1..F,c in 1..L}; #coût client des fournisseur
param C {i in 1..F}; #Cout d'ouverture des fournisseurs


var y{i in 1..F}, binary; #tableau des fournisseur ouvert
var x{f in 1..F,c in 1..L}, binary; #tableau possibilité fournisseur

minimize z :
	sum{i in 1..F} (C[i]*y[i]) + sum{i in 1..F,j in 1..L} (M[i,j]*x[i,j]);
	
subject to
T{i in 1..F,j in 1..L}:  x[i,j]<=y[i];
R{j in 1..L} : sum{i in 1..F} x[i,j]=1;

printf "lancement du solve \n";

solve;

# display fonction objectif et solution;
#printf "a=%f\n", a;