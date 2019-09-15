//bezier.asy

settings.outformat="pdf";
import graph;
unitsize(1cm);

path axisx = ((-4,0) -- (4,0));
draw (axisx, gray (0.7), arrow=Arrows(TeXHead));
Label lx = Label("$x$-axis", position=Relative(1.0), S);
label (lx, axisx);

path axisy = ((0,-4) -- (0,4));
draw (axisy, gray (0.7), arrow=Arrows(TeXHead));
Label ly = Label("$y$-axis", position=Relative(1.0), E);
label (ly, axisy);