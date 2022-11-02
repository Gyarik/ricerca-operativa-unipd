set Origini;        # Insieme delle origini
set Destinazioni;   # Insieme delle destinazioni

param O{Origini};                   # Ammontare delle origini
param D{Destinazioni};              # Ammontare delle destinazioni
param C{Origini, Destinazioni};     # Costo unitario per il trasporto

var x{Origini, Destinazioni} >= 0 integer;  # Incognita

# Funzione obiettivo: minimizza il costo totale del trasporto
minimize costo: sum{i in Origini, j in Destinazioni} C[i, j] * x[i, j];

# Condizioni/Vincoli
s.t. offerta{i in Origini}:
    sum{j in Destinazioni} x[i, j] <= O[i]; # Massime unita' producibili

s.t. domanda{j in Destinazioni}:
    sum{i in Origini} x[i, j] >= D[j];      # Minime unita' richieste