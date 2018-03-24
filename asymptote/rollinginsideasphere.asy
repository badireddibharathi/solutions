//Rollinginsideasphere.asy
settings.outformat = "pdf" ;
unitsize (1cm);

draw ((-3,0) ^^ (4,0)) ;
draw ((0,-5) ^^ (0,2)) ;

pair O = (0,0);
real R = 4;
real r = 1;
path sphere = arc (O,R,-120,-30) ;
draw (sphere);
path Rad = (O -- rotate(-120,O)*(R,0) );
draw (Rad,gray(0.6),arrow=Arrow);
Label LR = ("$R$") ;
label (LR,Rad) ;

pair C1 = rotate(-90,O)*(R-r,0) ;
draw (O -- rotate(-90,O)*(R,0),gray(0.6)) ;
path ball1 = circle (C1,r) ;
draw (ball1,gray(0.6));
draw (C1 -- C1-I,red) ;
pair C2 = rotate(-60,O)*(R-r,0) ;
draw (O -- rotate(-60,O)*(R,0), gray(0.6)) ;
draw (C2 -- C2-I,gray(0.6)) ;
draw (C2 -- rotate(-120,C2)*(C2-I),red) ;
path ball2 = circle (C2,r) ;
draw (ball2,gray(0.6));

path rad = (C1 -- rotate(-120,C1)*shift(C1)*(1,0));
draw (rad,gray(0.6),arrow=Arrow);
Label Lr = ("$r$") ;
label (Lr,rad) ;
