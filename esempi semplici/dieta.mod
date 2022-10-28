var x1 >= 0;    # quantita' verdura
var x2 >= 0;    # quantita' carne
var x3 >= 0;    # quantita' frutta

# costo giornaliero dieta
minimize costo: 4 * x1 + 10 * x2 + 7 * x3;

s.t. proteine: 5 * x1 + 15 * x2 + 4 * x3 >= 20;
s.t. ferro: 6 * x1 + 10 * x2 + 5 * x3 >= 30;
s.t. calcio: 5 * x1 + 3 * x2 + 12 * x3 >= 10;