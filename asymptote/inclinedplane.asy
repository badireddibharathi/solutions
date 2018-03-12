settings.outformat = "pdf";
unitsize(2cm);

pair A = (0,0);
pair B = shift(6,0)*A;
pair C = shift(0,3)*B;
draw (A -- B -- C -- cycle);
Label ta = Label ("$\theta$",position=MidPoint);
path T = arc(A,(1,0),C);
draw (T);
label(ta,T);

path c = circle (C,1);
draw (c,linewidth(2.0));
Label pu = Label ("pulley",position=Relative(0.25));
label(pu,c);

draw (point(c,0) -- (7,2));
path m = box ((6.5,1),(7.5,2));
Label lm = Label ("m",position = Relative(0.25)); 
draw (m,linewidth(2.0));
label (lm,m);
dot (C);
pair D = (A+C)/2;

path p = box (A, shift(1,2)*A);
//draw (shift((A+C)/2)*p);
path q = shift(D)*rotate(degrees(C-A))*p;
draw (q,linewidth(2.0));
Label lM = Label ("M",position = Relative(-0.5)); 
label (lM,q);

pair s = point(q,1.5);
pair t = shift(unit(C-A))*s;
dot(s,red);
draw (s -- t,red,arrow=Arrow);
pair r = shift (unit(dir(degrees(C-A)+90)))*C;
draw (s -- r);