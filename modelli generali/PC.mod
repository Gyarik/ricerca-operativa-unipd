set Stabilimenti;
set Banche;

param P{Stabilimenti};              # Costi produzione
param T{Stabilimenti, Banche};      # Costi trasporto
param C{Stabilimenti};              # Capacita' produzione
param R{Banche};                    # Richieste
param S symbolic in Stabilimenti;   # Stabilimento da bilanciare
param A;                            # Bilanciamento generale
param B;                            # Bilanciamento singolo

var x{Stabilimenti, Banche} integer >= 0;   # Incognita (PC)

# Funzione obiettivo: minimizza costo totale (produzione + trasporto)
minimize costo: sum{i in Stabilimenti, j in Banche}
    (P[i] + T[i, j]) * x[i, j];

# Condizioni/Vincoli
s.t. produzione{i in Stabilimenti}:
    sum{j in Banche} x[i, j] <= C[i];   # Massima capacita' produzione

s.t. domanda{j in Banche}:
    sum{i in Stabilimenti} x[i, j] = R[j];  # No eccessi di produzione

s.t. bil1:
    sum{j in Banche} x[S, j] >= A *
    sum{i in Stabilimenti, j in Banche} x[i, j];    # Bilanciamento

s.t. bil2{i in Stabilimenti: i != S}:
    sum{j in Banche} x[S, j] >= B * sum{k in Banche} x[i, k];   # Bilanciamento