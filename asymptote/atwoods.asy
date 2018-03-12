//asy1.asy
settings.outformat = "pdf";

unitsize (1cm);
draw ((0,-8) ^^ (0,8));
draw ((-8,0) ^^ (8,0));

pair cp1 = (6,3);
pair b1 = (6,0);
pair cp2 = (4,5);
path pulley1 = circle(cp1,1);
draw (pulley1,black+linewidth(2.0));
dot (cp1);

path ceil = (2,7) -- (8,7);
draw (ceil);

path s1 = cp1 -- shift(0,1)*b1;
draw (s1);

path m1 = box ((5.5,0),(6.5,1));
draw (m1);
Label lm1 = Label ("$m_1$",position=Relative(0.375));
label(lm1,m1);

path s2 = (7,7) -- shift(1,0)*cp1;
path s3 = shift(-1,0)*cp1 -- (5,5);
draw (s2);
draw (s3);

path pulley2 = circle (cp2,1);
draw (pulley2,black+linewidth(2.0));
dot (cp2);

path s4 = cp2 -- (4,7);
draw (s4);

path s5 = shift(-1,0)*cp2 -- (3,3);
draw (s5);

path m2 = box ((2.5,2),(3.5,3));
draw (m2);
Label lm2 = Label ("$m_2$",position=Relative(0.375));
label(lm2,m2);
