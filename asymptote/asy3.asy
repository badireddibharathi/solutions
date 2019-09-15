//asy3.asy

settings.outformat="pdf";
import graph;
unitsize(1cm);

xaxis("$x$-axis",arrow=Arrow(TeXHead));
yaxis("$y$-axis",arrow=Arrow(TeXHead));
pair O = (0,0);
pair A = (4,7);
pair B = (0,4);
path OA = O -- A;
path AB = A -- B;
draw(OA,arrow=Arrow,red);
draw(AB,arrow=Arrow,red);
path BO = B -- O;
draw(BO,arrow=Arrow,red);
path angO = arc (O,(0,1),A,CW);
draw(angO);
path angB = arc (B,shift(0,-1)*B,A,CCW);
draw(angB);
path angA = arc (A,shift(unit(O-A))*A,B,CW);
draw(angA);