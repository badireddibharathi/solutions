//longline.asy
settings.outformat="pdf";

import graph;

unitsize(1cm);

real x = 4;
real y = 4;
real dx = 0.1;
pair A = (x,0);
pair B = (-1*x,0);
pair P = (0,y);

draw ((-6,0) ^^ (6,0));
draw ((0,-1) ^^ (0,6));
axes (xlabel = "$x$-axis", ylabel = "$y$-axis", gray(0.7), arrow=Arrows);

path lc = ((-5,0) -- (5,0));
draw (lc, linewidth(2));

path angle1 = arc (P, 0.5, 270, 315);
draw (angle1);
Label a1 = Label ("$\theta$",position=Relative(0.5));
label(a1, angle1);

path angle2 = arc (P, 0.5, 225, 270);
draw (angle2);
Label a2 = Label ("$\theta$",position=Relative(0.5));
label(a2, angle2);

draw (A -- P, gray(0.7));
path de1 = (P -- (-1,y+1));
draw (de1, arrow=Arrow);
Label le1 = Label ("$d\vec{E}_1$",position=Relative(1.0));
label(le1, de1);

draw (B -- P, gray(0.7));
path de2 = (P -- (1,y+1));
draw (de2, arrow=Arrow);
Label le2 = Label ("$d\vec{E}_2$",position=Relative(1.0));
label(le2, de2);

path el1 = (A -- (x+dx, 0));
draw (el1, linewidth(3)+squarecap);
Label lel1 = Label ("$(x,0)$",position=Relative(1.0));
label(lel1, el1);
