//holesphere.asy

settings.outformat = "pdf";
unitsize(1cm);

import graph;

real x = 2;

draw ((-4,0) -- (4,0));
draw ((0,-4) ^^ (0,4));
path p = arc ((0,0),3,x,180-x) ;
draw (p);
path q = arc ((0,0),3,-x,x-180) ;
draw (q);
pair A = rotate(x)*(3,0);
pair B = rotate(-x)*(3,0);
pair C = rotate(180-x)*(3,0);
pair D = rotate(x-180)*(3,0);
draw (A -- C) ;
draw (B -- D);
pair P = (2,0);
filldraw (circle ((0,0),2),lightgray);
dot (P);
path rs = ((0,0) -- rotate(35)*(3,0)) ;
Label lrs = Label ("$R$",position=MidPoint);
draw (rs,arrow=Arrow);
label(lrs,rs);
path rv = ((0,0) -- (2,0)) ;
Label l = Label ("$\vec{r}$",position=MidPoint);
draw (rv,arrow=Arrow);
label(l,rv);