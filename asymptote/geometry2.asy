//geometry2.asy

settings.outformat="pdf";
unitsize(1cm);

draw ((0,8) ^^ (0,-8)) ;
draw ((-8,0) ^^ (8,0)) ;

pair A = (0,1);
pair B = (2,0);
pair C = (2,2);

dot (A);
dot (B);
dot (C);

draw ("$A$",A,W);
draw ("$B$",B,E);
draw ("$C$",C,E);
draw (B -- C);

pair X = (A+B)/2 ;
draw (X -- rotate(90,X)*shift(X)*unit(B-A),arrow=Arrow);
//pair D = rotate(90,X)*unit(B-X);
//dot (D);

//path ca = circle (A,length(A-B));
//draw (ca);
//path cb = circle (B,length(A-B));
//draw (cb);

//real[] pi = intersect(ca,cb);
//pair C = point (ca,pi[0]);
//dot (C);
//draw ("$C$",C,N);
//draw (A -- C);
//draw (B -- C);