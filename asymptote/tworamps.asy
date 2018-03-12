//tworamps.asy

settings.outformat="pdf";
unitsize(1cm);

draw ((0,8) ^^ (0,-8)) ;
draw ((-8,0) ^^ (8,0)) ;

pair A = (0,4);
pair B = (-3,0);
pair C = (5,0);

path ABC = (A -- B -- C -- cycle);
draw (ABC);

path pu = circle (A,0.5);
draw (pu);

path ata = arc(B,shift(0.5*unit(C-B))*B,A,CCW);
Label lta = Label("$\theta$",MidPoint,NE);
draw (lta,ata) ;

path aphi = arc(C,shift(0.5*unit(B-C))*C,A,CW);
Label lphi = Label("$\phi$",MidPoint,W);
draw (lphi,aphi) ;

pair D = (A+2B)/3;
path m1 = (shift(D)*rotate(degrees(A-B))*shift(-D)*box (D,shift(1,1)*D));
draw (m1);
//dot (shift(rotate(90)*0.5*unit(B-A))*A,red);
//dot (shift(D)*rotate(-90)*shift(-D)*shift(0.5*unit(A-B))*D,red);
pair E = shift(unit(A-B))*D;
draw (shift(rotate(90)*0.5*unit(A-B))*A -- shift(E)*rotate(90)*shift(-E)*shift(0.5*unit(A-B))*E);
//draw (box (D,shift(1,1)*D));

pair F = (A+C)/2;
path m2 = (shift(F)*rotate(degrees(C-A))*shift(-F)*box (F,shift(1,1)*F));
draw (m2);
pair G = shift(unit(C-A))*F;
draw (shift(rotate(90)*0.5*unit(C-A))*A -- shift(F)*rotate(90)*shift(-F)*shift(0.5*unit(C-A))*F);

