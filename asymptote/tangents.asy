//tangents.asy

settings.outformat = "pdf";
unitsize(1cm);

path xaxis = ((0,6) -- (0,-6)) ;
draw (xaxis,gray(0.7),arrow=Arrows);
path yaxis = ((6,0) -- (-6,0)) ;
draw (yaxis,gray(0.7),arrow=Arrows);
pair O = (0,0);
path c = circle(O,4);
draw (c);

void drawunits (path p) {
	for (int i = 0; i < 10; ++i) {
    	pair O = (0,0);
		pair A = relpoint (p,i*0.1);
		path uv = rotate(90,A)*(A -- shift(A)*unit(O-A));
		draw (uv,arrow=Arrow);
    }
}

//drawunits (c);
