//bslaw.asy

settings.outformat = "pdf";
unitsize (1cm);
import graph;

axes (xlabel="$x$-axis",ylabel="$y$-axis",min=(-5,-1), max=(5,5),arrow=Arrows(TeXHead)) ;
path wire = ((-3,0) -- (3,0)) ;
//draw ( wire,linewidth(2.0),Bars,Arrows) ;
pair A = (2,0);
pair P = (0,3);
path dr = (shift(0.05,0)*A -- A) ;
draw (dr,linewidth(2.0)+red) ;
draw (A -- P,gray(0.7));
path dB = (P -- rotate(90,P)*shift(P)*unit(P-A));
draw (dB,arrow=Arrow);
