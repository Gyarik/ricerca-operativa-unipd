set Prodotti;   # Insieme dei prodotti
set Risorse;    # Insieme delle risorse

param maxNumProd;               # Massimo numero di prodotti
param P{Prodotti};		        # Profitto unitario
param Q{Risorse};		        # Disponibilita' risorsa
param A{Prodotti, Risorse};	    # Risorsa per unita' di prodotto

var x{i in Prodotti} >= 0, <= maxNumProd integer;   # Incognita

# Funzione obiettivo: massimizza il profitto totale
maximize profitto: sum{i in Prodotti} P[i] * x[i];

# Condizioni/Vincoli
s.t. disponib{j in Risorse}:
    sum{i in Prodotti} A[i, j] * x[i] <= Q[j];  # Massima disponibilita'
