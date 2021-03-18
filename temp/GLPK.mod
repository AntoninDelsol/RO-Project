# modèle GLPK.mod

param F; #nb de fournisseurs
param L; #nb de clients

param M {c in 1..L,f in 1..F}; #coût client des fournisseur
param C {i in 1..F}; #Cout d'ouverture des fournisseurs


var y{i in 1..F}, binary; #tableau des fournisseur ouvert
var x{c in 1..L,f in 1..F}, binary; #tableau possibilité fournisseur

minimize z :
	sum (i in 1..F) (j in 1..L) C[i]*y[i] + C[j,i]*x[j,i] ;
	
subject to
T{j in 1..L}{i in 1..F}:  x[j,i]<=y[i] ;sum{j in 1..N} x[i]*M[i][j]>=1;
Q{j in 1..L}{i in 1..F}:  x[j,i]>=0 ;
R{j in L} : sum{i in F} x[j,i]=1;


printf "lancement du solve \n";
solve;

# display fonction objectif et solution;
#printf "a=%f\n", a;
