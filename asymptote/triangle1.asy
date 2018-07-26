//triangle1.asy
settings.outformat="pdf";
unitsize(1cm);

draw ((-5,0) ^^ (3,0));
draw ((0,5) ^^ (0,-3));

pair A = (2,4);
pair B = (-4,1);
pair C = (-3,-2);
draw ("$A$",A,NE);
draw ("$B$",B,W);
draw ("$C$",C,S);

path ABC = (A -- B -- C -- cycle);
draw (ABC);

path angA = arc(A,shift(0.5*unit(B-A))*A,C);
draw (angA);
path angB = arc(B,shift(0.5*unit(C-B))*B,A);
draw (angB);
path angC = arc(C,shift(0.5*unit(A-C))*C,B);
draw (angC);
