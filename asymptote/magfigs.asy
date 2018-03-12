//magfigs.asy

settings.outformat = "pdf";

unitsize(1cm);

draw ((0,-8) ^^ (0,8));
draw ((-8,0) ^^ (8,0));

void into (pair P) {
    path c = circle (P,0.2);
    draw (c);
    draw (relpoint(c,0.125) -- relpoint(c,0.625));
    draw (relpoint(c,0.375) -- relpoint(c,0.875));
}

void outof (pair P) {
    path c = circle (P,0.2);
    draw (c);
    filldraw (circle(P,0.05));
}

into ((0,0));
into ((1,2));
outof ((2,0));
outof ((1,4));