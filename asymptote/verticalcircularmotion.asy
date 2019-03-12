//verticalcircularmotion.asy

settings.outformat="pdf";
import graph;
import math;
unitsize(1cm);

draw ((-4,-4) ^^ (4,4));
//axes (xlabel = "$x$-axis",ylabel = "$y$-axis",gray(0.9), arrow=Arrows);
axes(gray(0.9));

real r = 3;
real a = 30;
pair O = (0,0);

path trac = circle (O, r);
draw (trac);

void dof (real a) {
    pair P = rotate(a)*shift(r,0)*O;
    dot (P);
    draw (O -- P, gray(0.5));
    path fg = (P -- shift(0,-1)*P);
    Label lg = Label ("$mg$", position=EndPoint);
    draw (fg, arrow=Arrow);
    label (lg, fg);
    path fgn = (P -- rotate(a)*shift(-1*sin(a*pi/180),0)*(r,0));
    Label lgn = Label ("$mg\sin\theta$", position=EndPoint);
    draw (fgn, arrow=Arrow);
    label (lgn, fgn);
    path fgp = (P -- rotate(a)*shift(0,-1*cos(a*pi/180))*(r,0));
    Label lgp = Label ("$mg\cos\theta$", position=EndPoint);
    draw (fgp, arrow=Arrow);
    label (lgp, fgp);
}

dof (a);
dof (-90);