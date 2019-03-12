//simplefbd.asy

settings.outformat = "pdf";
unitsize(1cm);

import graph;


draw ((0,-3) ^^ (0,5));
draw ((-3,0) ^^ (5,0));

draw ((-2,0) -- (4,0), gray(0.7));

pair A = (-1,0);
pair B = (3,0);
pair C = (3,3);
pair D = (-1,3);

path box = (A -- B -- C -- D -- cycle);
draw (box, linewidth(2));

pair G = (A+B+C+D)/4 ;
path fg = (G -- shift(0,-2)*G);
Label lg = Label ("$\vec{F}_{g}=mg$", position=EndPoint);
draw (fg, arrow=Arrow);
label (lg,fg);

pair F = (A+D)/2;
path fa = (shift(-1,0)*F -- F);
Label lf = Label ("$F$", position=BeginPoint);
draw (fa, arrow=Arrow);
label (lf,fa);

pair H = (A+B)/2;
path fn = (H -- shift(0,2)*H);
Label ln = Label ("$F_N$", position=EndPoint);
draw (fn, arrow=Arrow);
label (ln,fn);

path ff = (A -- shift(-1,0)*A);
Label lf = Label ("$F_f$", position=EndPoint);
draw (ff, arrow=Arrow);
label (lf,ff);



