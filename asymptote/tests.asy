//tests.asy

settings.outformat = "pdf";
unitsize(1cm);

import graph;

//path p = circle((0,0),4);
//draw (p);
//draw ((-5,0) -- (5,0));
//draw ((0,-5) -- (0,5));

draw ((-2,0) ^^ (6,0));
draw ((0,-2) ^^ (0,5));

path p = ((0,0) -- (4,0) -- (4,3) -- cycle);
//fill (p,lightgray);
draw (p);
path aa = arc((0,0),(1,0),(4,3)) ;
draw (aa);
Label l = Label("$\theta$",position=MidPoint);
label (l,aa);