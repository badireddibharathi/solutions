//gravitation.asy

settings.outformat= "pdf";
import graph;
unitsize(1cm);

pair O = (0,0);
axes(xlabel="$x$-axis",ylabel="$y$-axis",min=(-6,-6),max=(6,6),arrow=Arrows(TeXHead));

path disk = circle (O,4);
filldraw (disk,gray(1.0));
path radius = rotate(-45)*(O -- (4,0)) ;
draw (radius,gray(0.5),arrow=Arrow) ;
Label lr = Label("$R$");
label (lr,radius) ;

path element = circle (O,3);
draw (element,gray(0.6)+linewidth(2.0));
path radius1 = rotate(45,O)*(O -- (3,0)) ;
draw (radius1,gray(0.5),arrow=Arrow) ;
Label lre = Label("$r$");
label (lre,radius1) ;

path dr = rotate(45,O)*((3.5,0) -- (3,0)) ;
draw (dr,gray(0.5),arrow=Arrow) ;
Label ldr = Label("$dr$");
label (ldr,dr) ;