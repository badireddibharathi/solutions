//asy2.asy

settings.outformat="pdf";
import graph;
unitsize(1cm);

//size (20,20);
xaxis("$x$-axis",arrow=Arrow);
yaxis("$y$-axis",arrow=Arrow);
path p = (-4,3) -- (3,6);
draw (p);
pair d = dir(p);
dot (d);
draw ((0,0) -- d,arrow=Arrow);
pair pd = dir(rotate(-90)*p);
dot (pd);
draw ((0,0) -- pd,arrow=Arrow);
