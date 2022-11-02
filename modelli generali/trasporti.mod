set Origini;
set Destinazioni;

param O{Origini};
param D{Destinazioni};
param C{Origini, Destinazioni};

var x{Origini, Destinazioni} >= 0 integer;

minimize costo: sum{i in Origini, j in Destinazioni} C[i, j] * x[i, j];

s.t. offerta{i in Origini}:
    sum{j in Destinazioni} x[i, j] <= O[i];

s.t. domanda{j in Destinazioni}:
    sum{i in Origini} x[i, j] >= D[j];