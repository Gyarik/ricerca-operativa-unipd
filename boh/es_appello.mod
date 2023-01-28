set I;
set J;
param O{I};
param D{J};
param C{I, J};
param F{I};
param N;

var x{I, J} >= 0 integer;
var y{I} binary;

minimize f: sum{i in I, j in J} C[i,j] * x[i,j] - sum{i in I} F[i] * y[i];
s.t. cond1{j in J}: sum{i in I} x[i,j] >= D[j];
s.t. cond2{i in I}: sum{j in J} x[i,j] <= O[i] * y[i];
s.t. cond3: sum{i in I} y[i] <= N;
