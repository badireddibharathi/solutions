//epowerx.asy

import graph;
settings.outformat = "pdf";
unitsize (1cm);
//defaultpen(fontsize(10pt));

//size(150,0);
real f(real x) {return exp(x);}
pair F(real x) {return (x,f(x));}

xaxis("$x$", arrow=Arrow);
yaxis("$y$",0, arrow=Arrow);

draw(graph(f,-4,2,operator ..),red);
labely(1,E);
label("$e^x$",F(1),SE);