//pvdiagram.asy

settings.outformat="pdf";
import graph;
unitsize(1cm);

draw ((-1,0) ^^ (6,0));
draw ((0,-1) ^^ (0,6));

xaxis("pressure $P\,(pa)$",arrow=ArcArrow, gray(0.7));
yaxis("volume $V\,(m^3)$",arrow=ArcArrow, gray (0.7));

pair A = (2,2);
dot (A);
pair B = (4,2);
dot (B);
pair C = (4,4);
dot (C);
pair D = (2,4);
dot (D);

path box = (A -- B -- C -- D -- cycle);
draw (box);

Label la = Label ("$A$");
label (la,A,SW);
Label lb = Label ("$B$");
label (lb,B,SE);
Label lc = Label ("$C$");
label (lc,C,NE);
Label ld = Label ("$D$");
label (ld,D,NW);


draw ((A+B)/2 -- shift(0.2,0)*((A+B)/2),black,arrow=Arrow);
draw ((B+C)/2 -- shift(0,0.2)*((B+C)/2),black,arrow=Arrow);
draw ((C+D)/2 -- shift(-0.2,0)*((C+D)/2),black,arrow=Arrow);
draw ((D+A)/2 -- shift(0,-0.2)*((D+A)/2),black,arrow=Arrow);

real f (real x) {
	return 4/x;
}

path g = graph (f, 1, 4);
draw (g);