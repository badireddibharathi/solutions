//geometry2.asy

settings.outformat="pdf";
unitsize(1cm);

draw ((0,8) ^^ (0,-8)) ;
draw ((-8,0) ^^ (8,0)) ;

pair A = (-2,0);
pair B = (2,0);
pair C = (2,2);

dot (A);
dot (B);
dot (C);

draw ("$A$",A,W);
draw ("$B$",B,E);
draw ("$C$",C,E);
draw (B -- C);

pair X = (A+B)/2 ;
pair D = rotate(60,A)*shift(A)*(B-A);
dot(D);
draw ("$D$",D,N);
draw (circle(B,length(B-C)));
//pair D = rotate(90,X)*shift(X)*unit(B-X);
//draw (X -- rotate(90,X)*shift(X)*unit(B-X),arrow=Arrow);
draw (A -- D);
draw (D -- B);
draw (A -- B);