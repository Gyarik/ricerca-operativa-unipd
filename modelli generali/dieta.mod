set Risorse;
set Domande;

param C{Risorse};
param D{Domande};
param A{Risorse, Domande};

var x{i in Risorse} >= 0 integer;

minimize costo: sum{i in Risorse} C[i] * x[i];
s.t. soddisf{j in Domande}:
    sum{i in Risorse} A[i, j] * x[i] >= D[j];