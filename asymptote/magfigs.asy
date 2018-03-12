//magfigs.asy

settings.outformat = "pdf";

unitsize(1cm);

path c = circle ((0,0),0.4);
draw (c);
draw (relpoint(c,0.125) -- relpoint(c,0.625));
draw (relpoint(c,0.375) -- relpoint(c,0.875));