//semicircle.asy
settings.outformat="pdf";

import graph;

unitsize(1cm);

draw ((-4,0) ^^ (6,0));
draw ((0,-4) ^^ (0,4));
axes (xlabel = "$x$-axis", ylabel = "$y$-axis", gray(0.7), arrow=Arrow);

path sc = arc ((0,0), 3, 90, 270);
draw (sc, linewidth(2));

path angle1 = arc ((0,0), 0.5, 150, 180);
draw (angle1);
Label a1 = Label ("$\theta$",position=Relative(0.5));
label(a1, angle1);

path angle2 = arc ((0,0), 0.5, 180, 210);
draw (angle2);
Label a2 = Label ("$\theta$",position=Relative(0.5));
label(a2, angle2);

path de1 = ((0,0) -- (1,-0.5));
draw (de1, arrow=Arrow);
Label le1 = Label ("$d\vec{E}_1$",position=Relative(1.0));
label(le1, de1);

path de2 = ((0,0) -- (1,0.5));
draw (de2, arrow=Arrow);
Label le2 = Label ("$d\vec{E}_2$",position=Relative(1.0));
label(le2, de2);

path de = ((0,0) -- (1,0));
draw (de, arrow=Arrow);
Label le = Label ("$d\vec{E}$",position=Relative(1.0));
label(le, de);

real t = pi/6;
real dt = 0.05;
draw ((0,0) -- (-3*cos(t), 3*sin(t)));
draw ((0,0) -- (-3*cos(t + dt), 3*sin(t + dt)));
draw ((0,0) -- (-3*cos(t), -3*sin(t)));
draw ((0,0) -- (-3*cos(t + dt), -3*sin(t + dt)));
