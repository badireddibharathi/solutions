//asy2.asy

settings.outformat="pdf";
import graph;
unitsize(1cm);

xaxis("$x$-axis",arrow=ArcArrow);
yaxis("$y$-axis",arrow=ArcArrow);
path p = (-4,3) -- (3,6);
draw (p);
pair d = dir(p);
dot (d);
draw ((0,0) -- d,arrow=ArcArrow);
pair pd = dir(rotate(-90)*p);
dot (pd);
draw ((0,0) -- pd,arrow=ArcArrow);
