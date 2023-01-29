set I;
set J;
set K;
param P{K};
param C{I, J};
param F{I};
param B;
param Q{J, K};
param M{I};

var x{K} >= 0 integer;
var y{I, J} >= 0;
var z{I} binary;

maximize func: sum{k in K} P[k] * x[k];
s.t. cond1: sum{i in I, j in J} C[i, j] * y[i, j] +
            sum{i in I} F[i] * z[i] <= B;
s.t. cond2{j in J}: sum{i in I} y[i, j] >=
                    sum{k in K} Q[j, k] * x[k];
s.t. cond3{i in I}: sum{j in J} y[i, j] <= M[i] * z[i];