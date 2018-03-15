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

pair[] pi = intersectionpoints(ca,cb);
//pair C = point (cb,pi[0]);
dot (pi[1]);
draw ("$C$",pi[1],S);
draw (A -- pi[1]);
draw (B -- pi[1]);
