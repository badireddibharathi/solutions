//geometry2.asy

settings.outformat="pdf";
unitsize(1cm);

path xaxis = ((0,8) -- (0,-8)) ;
draw (xaxis,gray(0.8),arrow=Arrows);
path yaxis = ((-8,0) -- (8,0)) ;
draw (yaxis,gray(0.8),arrow=Arrows);

path c = circle ((0,0),4);
draw (c,linewidth(2));

for (int i = 0; i < 10; ++i) {
    pair p = point (c,i);
    dot (p,red);
    //pair uv = dir(c);
    //draw (p -- shift(p)*d,arrow=Arrow);
}
