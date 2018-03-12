//boxwedge.asy

settings.outformat="pdf";
unitsize(1cm);

draw ((0,8) ^^ (0,-8)) ;
draw ((-8,0) ^^ (8,0)) ;

pair A = (0,3);
pair B = (3,0);
pair C = (0,0);

path ABC = (A -- B -- C -- cycle);
draw (ABC,gray(0));

path pu = circle (A,0.5);
draw (pu);

path ata = arc(B,shift(0.5*unit(C-B))*B,A,CW);
Label lta = Label("$\theta$",MidPoint,NW);
draw (lta,ata) ;

path aphi = arc(C,shift(0.5*unit(B-C))*C,A,CCW);
Label lphi = Label("$\phi$",MidPoint,NE);
draw (lphi,aphi) ;

pair D = (2*A+B)/3;
path m1 = (rotate(degrees(B-A),D)*box (D,shift(1,1)*D));
draw (m1,gray(0)+1.0);
//dot (shift(rotate(90)*0.5*unit(B-A))*A,red);
//dot (shift(D)*rotate(-90)*shift(-D)*shift(0.5*unit(A-B))*D,red);
draw (shift(rotate(90)*0.5*unit(B-A))*A -- rotate(-90,D)*shift(0.5*unit(A-B))*D);
//draw (box (D,shift(1,1)*D));

path s2 = (shift(-0.5,0)*A -- shift(2*unit(C-A))*(shift(-0.5,0)*A)); 
draw (s2);
pair P = shift(2*unit(C-A))*(shift(-0.5,0)*A);
path m2 = box(shift(-0.25,0)*P,shift(0.25,-0.5)*P);
draw (m2,gray(0)+1.0);
