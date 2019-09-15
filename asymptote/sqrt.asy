//sqrt.asy

settings.outformat="pdf";
unitsize(1cm);

import graph;

real f(real x) {
	return x*x;
}


draw ((-1,0) ^^ (4,0));
draw ((0,-1) ^^ (0,9));
path xaxis = ((-1,0) -- (4,0));
draw (xaxis,gray(0.7),arrow=Arrow);
path yaxis = ((0,-1) -- (0,9));
draw (yaxis,gray(0.7),arrow=Arrow);

path g = graph(f,0,3);
draw(g);

//for (int i = 0; i < length(g); ++i) {
//    pair q = point (g,i);
//    dot (q,blue);
//    pair d = dir (g,i);
    //draw (q -- shift(q)*d,arrow=Arrow);
//}
