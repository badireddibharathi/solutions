//ramp.asy

settings.outformat = "pdf";
unitsize(1cm);

import graph;
import math;

real a = 45;
real cosa = cos(a*pi/180);
real sina = sin(a*pi/180);

draw ( (-1,-1) ^^ (5,5) );


pair A = (2,0);
pair B = shift(1,0)*A;
pair C = shift(0,1)*B;
pair D = shift(-1,0)*C;

path ramp = ((0,0) -- (5,0));
path b = box (A,C);

draw (rotate(a)*ramp, gray(0.7));
draw (rotate(a)*b, linewidth(1));

pair G = (A+B+C+D)/4;
path fg = (G -- shift(0,-1*cosa)*G);
Label lg = Label ("$mg\cos\theta$",position=EndPoint);
draw (rotate(a)*fg, arrow=Arrow);
label (lg, rotate(a)*fg);

path fgd = (G -- shift(-1*sina,0)*G);
Label lgd = Label ("$mg\sin\theta$",position=EndPoint);
draw (rotate(a)*fgd, arrow=Arrow);
label (lgd, rotate(a)*fgd);

path fn = (G -- shift(0,1*cosa)*G);
Label ln = Label ("$F_n$",position=EndPoint);
draw (rotate(a)*fn, arrow=Arrow);
label (ln, rotate(a)*fn);

