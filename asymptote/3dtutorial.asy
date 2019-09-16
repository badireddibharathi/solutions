//3dtutorial.asy

settings.outformat = "pdf";
settings.prc = false;

import three;

unitsize(1cm);

//unitsphere
//draw (unitsphere);

//axes
//draw ((0,0,0) -- (2,0,0),blue);
//draw ((0,0,0) -- (0,2,0),green);
//draw ((0,0,0) -- (0,0,2),red);

//a plane
//draw (O -- 2X ^^ O -- 2Y ^^ O -- 2Z,black) ;
//draw (plane(X,Y-X,Z-X),blue) ;

//a box
//draw (O -- 2X ^^ O -- 2Y ^^ O -- 2Z,black) ;
//draw (box(O, (0.5,1.5,1)), blue) ;

//a circle
//draw (O -- 2X ^^ O -- 2Y ^^ O -- 2Z,black) ;
//triple circleCenter = (Y+Z)/sqrt(2) + X;
//path3 mycircle = circle(c=circleCenter, r=1, normal=Y+Z);
//draw(plane(O=sqrt(2)*Z, 2X, 2*unit(Y-Z)), gray + 0.1cyan);
//draw(mycircle, blue);
//draw(shift(circleCenter) * (O -- Y+Z), green, arrow=Arrow3());

draw (-2X--2X, arrow=Arrow3(emissive(black))) ;
draw (-2Y--2Y, arrow=Arrow3(emissive(black))) ;
draw (-2Z--2Z, arrow=Arrow3(emissive(black))) ;
draw (path3(box((-2,-2),(2,2))), gray) ;
draw (arc(c=O, Y, Z), blue, arrow = Arrow3(TeXHead2, emissive(blue))) ;
draw (arc(c=O, -Y, Z), blue, arrow = Arrow3(TeXHead2, emissive(blue))) ;
draw (arc(c=(1,1,0), Y, 2X, normal=Z), green, arrow = Arrow3(TeXHead2(normal=Z), emissive(green))) ;
draw (arc(c=(1,1,0), Y, 2X, normal=-Z), red, arrow = Arrow3(TeXHead2(normal=Z), emissive(red))) ;
