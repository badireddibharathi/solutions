//circumcircle.asy
settings.outformat = "pdf";
unitsize(1cm);

draw ((-4,0) ^^ (4,0));
draw ((0,-4) ^^ (0,4));
pair A = (-2,3);
pair B = (1,-3);
pair C = (3,2);
path triangle=(A -- B -- C -- cycle);
draw (triangle,red);

pair D = (A+B)/2;
pair E = (B+C)/2;
dot (D);
dot (E);
pair Z = extension(D,D+I*dir(triangle,0.5),E,E+I*dir(triangle,1.5));
dot(Z);
draw (circle(Z,abs(Z-point(triangle,0))));
//pair p1=point(triangle,0.5);
//pair p2=point(triangle,1.5);