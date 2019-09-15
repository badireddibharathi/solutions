//ballinasphere.asy
settings.outformat = "pdf";
import graph;
unitsize(1cm);

axes (gray(0.9));
draw ((0,-8) ^^ (0,8));
draw ((-8,0) ^^ (8,0));

real R = 5;
real r = 0.5;
pair O = (0,0);
pair A = (0,-1*R);
pair B = (R,0);

path c = circle (O,R);
draw (c);
dot (O);

path b = circle (shift(0,r)*A,r);
draw (b, gray(0.8));

path p2 = circle (shift(-1*r,0)*B,r);
draw (p2);