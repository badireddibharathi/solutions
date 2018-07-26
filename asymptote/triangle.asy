settings.outformat = "pdf";
unitsize(1cm);

draw ((3,7) ^^ (0,1)) ;
draw ((1,0) ^^ (5,0)) ;

pair A = (0,4);
pair B = (3,6);
pair C = (4,2);

path ABC = (A -- B -- C -- cycle);
draw (ABC);

path angA = arc (A,shift(0.5*unit(B-A))*A,C,CW);
draw (angA);
Label aA = Label ("$\alpha$",MidPoint,E);
label(aA,angA);

path angB = arc (B,shift(0.5*unit(C-B))*B,A,CW);
draw (angB);
Label aB = Label ("$\beta$",MidPoint,SW);
label(aB,angB);

path angC = arc (C,shift(0.5*unit(A-C))*C,B,CW);
draw (angC);
Label aC = Label ("$\gamma$",MidPoint,NW);
label(aC,angC);

Label vA = Label ("$A$",MidPoint,W);
label(vA,A);
Label vB = Label ("$B$",MidPoint,N);
label(vB,B);
Label vC = Label ("$C$",MidPoint,SE);
label(vC,C);

