//parabola.asy

settings.outformat = "svg";
unitsize(1cm);

import graph;

path axisx = ((-1,0) -- (4,0));
draw (axisx,arrow=Arrow);
path axisy = ((0,-1) -- (0,4));
draw (axisy,arrow=Arrow);

real f (real x) {
    real y = -x*x+3*x;
    return y; 
}

path p = graph (f,0,3);
draw (p);