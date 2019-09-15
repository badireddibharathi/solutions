//asy5.asy

settings.outformat="pdf";
import graph;
unitsize(1cm);

xaxis("$x$-axis",arrow=Arrow);
yaxis("$y$-axis",arrow=Arrow);

draw ((1,0) ^^ (9,0));
draw ((0,1) ^^ (0,9));

path p = circle((4,4),3);
draw (p);
for (int i = 0; i < 10; ++i) {
	/*draw ((0,0) -- scale(2)*dir(10*i),arrow=Arrow);*/
	pair a = point(p,i);
	pair d = dir(p,i);
	dot(a,blue);
	//draw(a -- d,arrow=Arrow,red);
	draw(shift(a)*scale(2)*((0,0) -- d),arrow=Arrow,red);
}

