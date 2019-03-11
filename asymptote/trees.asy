//trees.asy

settings.outformat="pdf";
import binarytree;
unitsize(1cm);

picture pic1, pic2;

binarytree bt = binarytree (10,2,nil,nil,36,5,34,nil,nil,1);

draw (pic1,bt);
add (pic1,(0,0));