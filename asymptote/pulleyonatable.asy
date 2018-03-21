//pulleyonatable.asy

settings.outformat = "pdf";
unitsize (1cm);

path surf = ((-6,0) -- (0,0));
draw (surf,black+linewidth(2.0));
pair A = (0,0);
path pulley = circle(A,1);
draw (pulley,black+linewidth(2.0));
