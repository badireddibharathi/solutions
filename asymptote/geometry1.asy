//geometry1.asy

settings.outformat="pdf";
unitsize(1cm);

draw ((0,8) ^^ (0,-8)) ;
draw ((-8,0) ^^ (8,0)) ;

pair A = (2,0);
pair B = (-2,1);
dot (A);
dot (B);

draw ("$A$",A,E);
draw ("$B$",B,W);

draw (A -- B);

path ca = circle (A,length(A-B));
draw (ca);
path cb = circle (B,length(A-B));
draw (cb);

real[] pi = intersect(ca,cb);
pair C = point (ca,pi[0]);
dot (C);
draw ("$C$",C,N);
draw (A -- C);
draw (B -- C);