set Risorse;
set Domande;

param minNumRis{Risorse};
param C{Risorse};
param D{Domande};
param A{Risorse, Domande};

var x{i in Risorse} >= minNumRis[i] integer;

minimize costo: sum{i in Risorse} C[i] * x[i];
s.t. tipologie{j in Domande}:
    sum{i in Risorse} A[i, j] * x[i] >= D[j];