//tests.asy

settings.outformat = "pdf";
unitsize(1cm);

import graph;

draw ((-2,0) ^^ (6,0));
draw ((0,-2) ^^ (0,5));

pair A = (0,0);
pair B = (4,0);
pair C = (4,3);

path p = (A -- B -- C -- cycle);
fill (p, gray(0.9));
draw (p);
path aa = arc(A, E, C) ;
draw (aa);
Label l = Label("$\theta$",position=MidPoint);
label (l,aa);

dot (A, blue);