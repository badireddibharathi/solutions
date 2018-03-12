//gausslaw.asy

settings.outformat = "pdf";
unitsize(1cm);

import graph;

draw ((0,-8) ^^ (0,8));
draw ((-8,0) ^^ (8,0));

path unitcircle=E..N..W..S..cycle;
path g=scale(1.2)*unitcircle;
filldraw(unitcircle^^g,evenodd+lightgray,black);
