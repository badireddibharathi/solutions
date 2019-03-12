//axes.asy

settings.outformat = "pdf";
import graph;
unitsize (1cm);

draw ((-1,-1) ^^ (5,5));
pair O = (0,0);
axes (xlabel = "$x$-axis", ylabel = "$y$-axis", arrow=Arrow);
//draw (arc((0,0),(2,0),(4,5)));

void drawaxes (pair P, real a) {
	path xaksis = shift(P)*rotate (a)*(O -- shift(1,0)*O);
	path yaksis = shift(P)*rotate (a)*(O -- shift(0,1)*O);
	Label lx = Label ("$x$", position=EndPoint);
	Label ly = Label ("$y$", position=EndPoint);
	draw (xaksis, gray(0.7), arrow=Arrow);
	draw (yaksis, gray(0.7), arrow=Arrow);
	label (lx, xaksis, gray (0.7));
	label (ly, yaksis, gray (0.7));
}

drawaxes ((2,2), -30);
drawaxes ((2,0), 60);