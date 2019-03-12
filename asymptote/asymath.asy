//asymath.asy

settings.outformat="pdf";
import math;
import graph;
unitsize(1cm);

draw ((-1,-1) ^^ (4,4));
axes (xlabel= "$x$-axis",ylabel= "$y$-axis",arrow=Arrow);
drawline ((0,1),(2,3));