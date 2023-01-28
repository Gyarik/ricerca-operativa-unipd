set I;          # Linee
set J;          # Prodotti
param A{I, J};
param B{J};
param C{I, J};
param D{I};
param F{I};
param M;

var x{I, J} >= 0 integer;
var y{I} binary;

minimize func: sum{i in I, j in J} C[i, j] * x[i, j] +
               sum{i in I} F[i] * y[i];
s.t. c1{j in J}: sum{i in I} A[i, j] * x[i, j] >= B[j];
s.t. c2{i in I}: sum{j in J} x[i, j] <= D[i];
s.t. c3{i in I}: sum{j in J} x[i, j] <= M * y[i];