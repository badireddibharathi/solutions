//gausslaw.asy

settings.outformat = "pdf";
unitsize(1cm);

import graph;

path unitcircle=E..N..W..S..cycle;
path g=scale(1.2)*unitcircle;
filldraw(unitcircle^^g,evenodd+lightgray,black);
