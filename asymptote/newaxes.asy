//newaxes.asy
settings.outformat = "pdf";

import graph;
unitsize(1cm);

void drawaxes (pair O, real angle) {	
	path xandy = ((1,0) -- (0,0) -- (0,1) ) ;
	Label lx  = ("$x$");
	Label ly  = ("$y$");
	label (lx, (1,0), E);
	label (ly, (0,1), N);
	draw (shift(O)*rotate(angle)*xandy, gray(0.8), arrow=Arrows);
}

axes(xlabel="$x$",ylabel="$g\tan\theta$",min=(-4,-4),max=(4,4),gray(0.7),arrow=Arrows(TeXHead));
drawaxes ((0,0),30);
drawaxes ((0,2),-30);
drawaxes ((2,2), 60);

dot (shift (0,0)* (0,2) ) ;
dot (shift (0,0)* (2,2) ) ;