set Risorse;    # Insieme delle risorse
set Domande;    # Insieme delle domande/richieste per la dieta

param minRis{Risorse} default 0;    # Minimo numero di risorse
param C{Risorse};                   # Costo unitario delle risorse
param D{Domande};                   # Ammontare delle domande
param A{Risorse, Domande};          # Capacita' delle risorse di soddisfare le domande

var x{i in Risorse} integer >= minRis[i];   # Incognita (risorse)

# Funzione obiettivo: minimizza il costo totale
minimize costo: sum{i in Risorse} C[i] * x[i];

# Condizioni/Vincoli
s.t. soddisf{j in Domande}:
    sum{i in Risorse} A[i, j] * x[i] >= D[j];   # Minimo rapporto da rispettare