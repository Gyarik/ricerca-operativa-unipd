var xL;
var xP;

#f.o.
maximize resa: 3000 * xL + 5000 * xP;
subject to ettari: xL + xP <= 11;
subject to semi: 7 * xL <= 70;
s.t. tuberi: 3 * xP <= 100;
s.t. concime: 10 * xL + 20 * xP <= 145;
s.t. domL: xL >= 0;
s.t. domP: xP >= 0;