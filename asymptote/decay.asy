//decay.asy

settings.outformat = "pdf";
unitsize(1cm);
import math;
import graph;

path haxis = ((0,0) -- (5,0));
Label lx = Label ("$x$-axis", position=EndPoint);
draw (haxis, arrow=Arrow);
label (lx, haxis, SW);

path vaxis = ((0,0) -- (0,2));
Label ly = Label ("$y$-axis", position=EndPoint);
draw (vaxis, arrow=Arrow);
label (ly, vaxis, SW);

real f (real x) {
    return (1- exp(-x));
}
path g = graph (f, 0, 4);
draw (g);

path tang = ((0,1) -- (4,1) );
draw (tang, gray(0.8));

Label lv = Label ("$\mathcal{E}_0$");
label (lv, (0,1), W);