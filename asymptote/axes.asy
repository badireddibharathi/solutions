//access graph;
//graph.axes();
settings.outformat = "pdf";
//defaultpen(fontsize(10pt));
size (6cm);
//draw ((0,0) -- (0,1) -- (1,1) -- (1,0) --cycle);
//draw (box ((0,0), (2,2)));
//draw (unitcircle);
//draw (polygon(6));
//label ("$A$",(1,0),SE);
//label ("$B$",(0,0),SW);
//label ("$C$",(0,1),NW);
//label ("$D$",(1,1),NE);
label ("$x$-axis",(6,0),E);
label ("$y$-axis",(0,6),N);
draw ((0,0) -- (6,0),arrow=Arrow);
draw ((0,0) -- (0,6),arrow=Arrow);
draw ((0,0) -- (4,5));
draw (arc((0,0),(2,0),(4,5)));