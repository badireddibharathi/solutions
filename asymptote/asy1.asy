settings.outformat="pdf";

//import graph;

unitsize(1cm);

size (20,20);
draw ((0,0) ^^ (0,6));
draw ((0,0) ^^ (5,0));
path q = ((2,2) -- (5,6));
draw (q);
path pulley = circle((5,6),1);
draw (pulley);
pair A = point (q,0.0);
dot(A,red);
A = point (q,0.3);
dot(A,red);
A = point (q,0.5);
dot(A,red);
A = point (q,1.0);
dot(A,red);
