//fbd1.asy

settings.outformat="pdf";
unitsize(1cm);

draw ((-3,-1) ^^ (5,0));
draw ((-1,4) ^^ (-1,-1));

draw ((-2,0) -- (4,0));

pair A = (0,0);
pair B = (2,0);
pair C = (2,2);
pair D = (0,2);
pair O = (A+B+C+D)/4;


path box = (A -- B -- C -- D -- cycle);
draw (box);

draw (O -- shift(0,-2)*O,red,arrow=Arrow);
draw (O -- shift(0,2)*O,red,arrow=Arrow);
draw ((A+B)/2 -- shift(-2,0)*((A+B)/2),red,arrow=Arrow);