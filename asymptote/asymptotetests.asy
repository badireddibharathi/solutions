//asymptotetests.asy
//chap6

settings.outformat = "pdf";

unitsize(1cm);

draw ((-8,0) -- (8,0),gray(0.9),arrow=Arrow);
draw ((0,-8) -- (0,8),gray(0.9),arrow=Arrow);

pair A = (3,4);
pair B = (-4,2);
pair C = (1,-2);
pair D = (A+B)/2;
pair E = (B+C)/2;
pair F = (C+A)/2;

dot(A);
dot(B);
dot(C);
dot(D);
dot(E);
dot(F);

label("$A$",A,N);
label("$B$",B,W);
label("$C$",C,S);

draw (A -- B);
draw (B -- C);
draw (C -- A);

draw (D--shift(D)*rotate(90)*unit(B-A),arrow=Arrow);
draw (E--shift(E)*rotate(90)*unit(C-B),arrow=Arrow);
draw (F--shift(F)*rotate(90)*unit(A-C),arrow=Arrow);

/*
draw (A -- shift(A)*unit(B-A),arrow=Arrow);
draw (B -- shift(B)*unit(A-B),arrow=Arrow);
draw (A -- shift(A)*unit(C-A),arrow=Arrow);
draw (C -- shift(C)*unit(A-C),arrow=Arrow);
draw (C -- shift(C)*unit(B-C),arrow=Arrow);
draw (B -- shift(B)*unit(C-B),arrow=Arrow);
*/