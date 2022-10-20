var xA >= 0 integer;
var xB >= 0 integer;

maximize guadagno: 3 * xA + 6 * xB;

s.t. display: xA + 2 * xB <= 10;
s.t. navigazione: xA <= 9;
s.t. tastierini: 2 * xA + 3 * xB <= 21;
s.t. logica: 2 * xA + 2 * xB <= 18;
s.t. trasmissione: xA + 3 * xB <= 12;
s.t. led: xA <= 10;