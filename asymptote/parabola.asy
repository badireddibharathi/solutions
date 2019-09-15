//parabola.asy

settings.outformat = "pdf";
unitsize(1cm);

import graph;

path axisx = ((-1,0) -- (4,0));
draw (axisx,arrow=Arrow);
Label xa = Label ("$x$-axis", position=Relative(1.0), S);
label(xa, axisx);
path axisy = ((0,-1) -- (0,4));
draw (axisy,arrow=Arrow);
Label ya = Label ("$y$-axis", position=Relative(1.0), E);
label(ya, axisy);

real f (real x) {
    real y = -x*x+3*x;
    return y; 
}

path p = graph (f,0,3);
draw (p);