//threedeeplane.asy

settings.outformat="pdf";
settings.render=4;

import three;
size(4cm,0);
draw(O--2X ^^ O--2Y ^^ O--2Z, black);
draw(plane(O=X, Y-X, Z-X), blue);
