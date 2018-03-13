//currentsheet.asy

settings.outformat = "pdf";
unitsize(1cm);

void outof (pair Z) {
	path p = circle (Z,0.1);
	path q = circle (Z,0.03);
	draw (p,gray(0.5));
	filldraw (q);
}


draw ((0,-1) -- (0,5),gray(0.9),arrow=Arrow);
draw ((-8,0) -- (8,0),linewidth(2.0));

pair O = (0,0);
pair A = (4,0);
pair B = (-4,0);
pair P = (0,3);

label ("$A(x,0)$",A,S);
label ("$B(-x,0)$",B,S);
label ("$P(0,d)$",P,NE);
label ("$O$",O,SW);

draw (A -- P,gray(0.7));
draw (B -- P,gray(0.7));

path vb1 = (P -- shift(P)*rotate(90)*unit(P-A));
path vb2 = (P -- shift(P)*rotate(90)*unit(P-B));
path vb = (P -- shift(P)*rotate(90)*unit(P-O));

Label lvb = Label ("$d\vec{B}$");
Label lvb1 = Label ("$d\vec{B}_1$");
Label lvb2 = Label ("$d\vec{B}_2$");

draw (vb1,arrow=Arrow);
draw (vb2,arrow=Arrow);
draw (vb,arrow=Arrow);

label (lvb1,relpoint(vb1,1),S);
label (lvb2,relpoint(vb2,1),N);
label (lvb,relpoint(vb,1),W);

outof ((-2,1));
outof ((2,1));