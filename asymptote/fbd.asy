//fbd.asy

settings.outformat="pdf";
import graph;
unitsize(1cm);

//xaxis("$x$-axis",arrow=Arrow);
//yaxis("$y$-axis",arrow=Arrow);

draw ((-1,0) ^^ (5,0));
draw ((0,-1) ^^ (0,5));

pair A = (0,0);
pair B = (0,4);
pair C = (4,0);

path p = (A -- B -- C -- cycle);
draw(p);
path t = arc (C,shift(-1,0)*C,B,CW);
Label lt = Label("$\theta$",position=MidPoint,W);
draw(t);
label(lt,t);
real ta = degrees(C-B);

path pu = circle(B,0.5);
draw (pu);

path m1 = box(B,rotate(ta)*shift(1,1)*B);
draw (m1);