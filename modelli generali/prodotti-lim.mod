set Prodotti;
set Risorse;

param maxNumProd{Prodotti};
param P{Prodotti};		        # profitto unitario
param Q{Risorse};		        # disponibilita' risorsa
param A{Prodotti, Risorse};	    # risorsa per unita' di prodotto

var x{i in Prodotti} >= 0, <= maxNumProd[i] integer;

maximize profitto: sum{i in Prodotti} P[i] * x[i];
s.t. disponib{j in Risorse}:
    sum{i in Prodotti} A[i, j] * x[i] <= Q[j];