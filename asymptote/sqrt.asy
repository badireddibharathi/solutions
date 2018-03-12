settings.outformat="pdf";
unitsize(3cm);
import graph;
real f(real x) {
	return sqrt(x);
}
path g = graph(f,0,2);
draw(g);