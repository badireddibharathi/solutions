settings.outformat = "pdf";
unitsize(1cm);

import graph;

//xaxis("$x$-axis",Arrow);
//yaxis("$y$-axis",Arrow);
draw ((0,-3) ^^ (0,3));
draw ((-4,0) ^^ (4,0));
real v = 1.0;
real r = 1.0;
real om = 1.0;
real x = 0.75;

pair C = (0,1);
path p = circle(C,1);
draw (p);
dot(relpoint(p,x),red);

C = (0+v,1);
p = circle(C,1);
draw (p);
dot(relpoint(p,0.6),red);

C = (0+2*v,1);
path p = circle(C,1);
draw (p);
dot(relpoint(p,0.5),red);
