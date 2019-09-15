//projectile.asy

settings.outformat="pdf";
import math;
import graph;
unitsize(1cm);

draw ((-1,0) ^^ (4,0));
draw ((0,-1) ^^ (0,4));

real g = -10;
real ap = pi/6;
real iv = 10;

real y (real x) {
    return (tan(ap)*x + (0.5*g/(iv*cos(ap))^2)*x^2);
}

path axix = ((0,0) -- (4,0));
draw (axix, gray (0.7), arrow=Arrow(TeXHead));
path axisy = ((0,0) -- (0,4));
draw (axisy, gray (0.7), arrow=Arrow(TeXHead));

path p = graph (y, 0, 2);
draw (p);

draw ((0,0) -- (cos(pi/6), sin(pi/6)), arrow=Arrow);