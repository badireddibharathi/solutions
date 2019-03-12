//boxwedge.asy

settings.outformat="pdf";
unitsize(1cm);

real r = 0.5;

draw ((0,5) ^^ (0,-3)) ;
draw ((-3,0) ^^ (4,0)) ;

pair A = (0,3);
pair B = (3,0);
pair C = (0,0);

path ABC = (A -- B -- C -- cycle);
draw (ABC,gray(0));

path pu = circle (A, r);
draw (pu);

path ata = arc(B,shift(r*unit(C-B))*B,A,CW);
Label lta = Label("$\theta$");
draw (ata);
label (lta,ata,WNW);

path aphi = arc(C,shift(r*unit(B-C))*C,A,CCW);
Label lphi = Label("$\phi$");
draw (aphi) ;
label (lphi,aphi,NE);

pair D = (2*A+B)/3;
path m1 = (rotate(degrees(B-A),D)*box (D,shift(1,1)*D));
draw (m1,gray(0)+1.0);
//dot (shift(rotate(90)*0.5*unit(B-A))*A,red);
//dot (shift(D)*rotate(-90)*shift(-D)*shift(0.5*unit(A-B))*D,red);
draw (shift(rotate(90)*0.5*unit(B-A))*A -- rotate(-90,D)*shift(0.5*unit(A-B))*D);
//draw (box (D,shift(1,1)*D));

path s2 = (shift(-1*r,0)*A -- shift(1.5*unit(C-A))*(shift(-1*r,0)*A)); 
draw (s2);
pair P = shift(1.5*unit(C-A))*(shift(-1*r,0)*A);
path m2 = box(shift(-0.25,0)*P,shift(0.25,-1*r)*P);
draw (m2,gray(0)+1.0);
