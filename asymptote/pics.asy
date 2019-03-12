//pics.asy

settings.outformat="pdf";
import math;
unitsize(1cm);

picture pic1, pic2;

size (pic1, 10cm);

draw (pic1, ((-2,3) -- (4,6)));

size (pic2, 10cm);

draw (pic2, ((2,3) -- (4,-6)));

add (pic1,(0,0));
add (pic2,(0,0));