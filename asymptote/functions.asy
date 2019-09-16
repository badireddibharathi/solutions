//functions.asy

settings.outformat="pdf";
unitsize(1cm);

import graph;

real sinf(real x) {
	return sin (x);
}

real cosf(real x) {
	return cos (x);
}

real tanf(real x) {
	return tan (x);
}

draw ((-4*pi,0) ^^ (4*pi,0));
draw ((0,-2) ^^ (0,2));
path xaxis = ((-4*pi,0) -- (4*pi,0));
draw (xaxis, gray(0.8), arrow=ArcArrows);
path yaxis = ((0,-2) -- (0,2));
draw (yaxis, gray(0.8), arrow=ArcArrows);

path g = graph (tanf, -pi/2+0.1, pi/2-0.1);
draw (g);
