//squareonline.asy

settings.outformat="pdf";
unitsize(1cm);

draw ((0,5) ^^ (0,-3)) ;
draw ((-2,0) ^^ (6,0)) ;

pair A = (4,-2);
pair B = (-1,3);

path AB = (A -- B);
draw (AB);
draw ("$A$",A,S);
draw ("$B$",B,N);

draw (A -- shift(2*unit(B-A))*A,arrow=Arrow);
draw (A -- shift(rotate(-90)*unit(B-A))*A,arrow=Arrow);
draw (B -- shift(unit(A-B))*B,arrow=Arrow);
draw (B -- shift(rotate(90)*unit(A-B))*B,arrow=Arrow);
draw (B -- shift(rotate(-90)*unit(A-B))*B,arrow=Arrow);

pair C = (A+B)/2;
draw (rotate(degrees(A-B),C)*box (C,shift(0.5,1)*C));
draw (box (C,shift(0.5,1)*C));
