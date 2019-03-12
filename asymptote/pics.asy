//pics.asy

settings.outformat="pdf";
import math;
import graph;
unitsize(1cm);

draw ((-2,-2) ^^ (4,4));
axes (xlabel = "$x$", ylabel = "$y$", gray(0.5), arrow=Arrow);

picture pic1, pic2;

size (pic1, 4cm);
axes (pic1, xlabel = "$x$", ylabel = "$y$", gray(0.5), arrow=Arrow);
draw (pic1, ((-2,3) -- (2,2)));

size (pic2, 4cm);

draw (pic2, ((2,3) -- (1,-2)));

add (pic1,(3,2));
add (pic2,(0,0));