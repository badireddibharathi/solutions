//exponential.asy

import graph;
settings.outformat = "pdf";
unitsize (1cm);

real ex (real x) {
	return exp (x);
}

draw ((-4,0) ^^ (4,0));

path g = graph (ex, 1, 3);

draw (g);