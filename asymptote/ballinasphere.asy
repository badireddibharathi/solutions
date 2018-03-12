settings.outformat = "pdf";
unitsize(1cm);


pair O = (0,0);
pair A = (0,-3);
pair B = (3,0);

path c = circle (O,3);
draw (c);
dot (O);

path b = circle (shift(0,0.1)*A,0.1);
draw (b);

path p2 = circle (shift(-0.1,0)*B,0.1);
draw (p2);