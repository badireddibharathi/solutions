//asy4.asy

settings.outformat="pdf";
import graph;
unitsize(1cm);

xaxis("$x$-axis",arrow=Arrow);
yaxis("$y$-axis",arrow=Arrow);

pair z = (3,4);
dot(z,red);
dot(conj(z),blue);
path p = (0,0) -- z;
draw (p,arrow=Arrow);
path q = (0,0) -- unit(conj(z));
draw (q,arrow=Arrow);
label("$z$",z);
label("$\bar{z}$",conj(z));

for (int i = 0; i < 10; ++i) {
	/*draw ((0,0) -- scale(2)*dir(10*i),arrow=Arrow);*/
	dot(point(p,i*0.1),red);
}

