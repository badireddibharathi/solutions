//ampereslaw.asy

settings.outformat="pdf";
unitsize(1cm);

path xaxis = ((0,8) -- (0,-8)) ;
draw (xaxis,gray(0.8),arrow=Arrows);
path yaxis = ((-8,0) -- (8,0)) ;
draw (yaxis,gray(0.8),arrow=Arrows);

path c = circle ((0,0),4);
draw (c);

for (int i = 0; i < 10; ++i) {
    pair p = relpoint (c,i*0.1);
    dot (p,red);
    pair uv = unit ((0,0)-p);
    draw (p -- shift(p)*rotate(-90)*uv,arrow=Arrow);
    draw (p -- shift(p)*uv,arrow=Arrow);
}
