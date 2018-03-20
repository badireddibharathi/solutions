//incircle.asy

settings.outformat = "pdf";
unitsize(1cm);

draw ((-4,0) ^^ (4,0)) ;
draw ((0,-4) ^^ (0,4)) ;

pair A = (-2,0);
pair B = (4,2);
pair C = (0,3);

path triangle= A--B--C--cycle;
real a = length (B-C);
real b = length (C-A);
real c = length (A-B);
pair Z = (a*A+b*B+c*C)/(a+b+c) ;
real s = (a+b+c)/2 ;
real area = sqrt(s*(s-a)*(s-b)*(s-c)) ;
real r = area/s ;

dot(Z);
draw (circle(Z,r));
draw(triangle,red);