set I;	#prodotti
set J;	#risorse

#parametri
param maxNumProd;
param P{I};		#profitto unitario
param Q{J};		#disponibilita' risorsa
param A{I, J};	#risorsa per unita' di prodotto

var x{I} >= 0, <= maxNumProd;

maximize profitto: sum{i in I} P[i] * x[i];
s.t. disponib{j in J}: sum{i in I} A[i, j] * x[i] <= Q[j];
