settings.outformat = "pdf";
unitsize(1cm);

pair A = (2,4);
pair B = (3,6);
pair C = (4,2);

path AB = A -- B;
path BC = B -- C;
path CA = C -- A;

path angA = arc (A,shift(A)*unit(B-A),shift(A)*unit(C-A));
draw (angA);
Label aA = Label ("$\alpha$",position=MidPoint);
label(aA,angA);

path angB = arc (B,shift(B)*unit(C-B),shift(B)*unit(A-B));
draw (angB);
Label aB = Label ("$\beta$",position=MidPoint);
label(aB,angB);

path angC = arc (C,shift(C)*unit(A-C),shift(C)*unit(B-C));
draw (angC);
Label aC = Label ("$\gamma$",position=MidPoint);
label(aC,angC);

Label vA = Label ("$A$",position=Relative(0.0));
label(vA,AB);
Label vB = Label ("$B$",position=Relative(0.0));
label(vB,BC);
Label vC = Label ("$C$",position=Relative(0.0));
label(vC,CA);

draw (AB);
draw (BC);
draw (CA);