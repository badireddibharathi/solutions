//pulleyonatable.asy

settings.outformat = "pdf";
import graph;
unitsize (1cm);

path surf = ((-6,0) -- (0,0));
draw (surf,black+linewidth(2.0));
pair O = (0,0);
path pulley = circle(O,1);
draw (pulley,black+linewidth(2.0));
