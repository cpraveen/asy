//settings.outformat="pdf";
settings.render=3;
//size(10cm,0);
size(250,0,IgnoreAspect);

import math;
import three;
import graph3;

//currentprojection=perspective(5,4,3);
currentprojection=perspective(2,3,2.5);
currentlight=(3,3,1);

draw(Label("$x$",1),(-2,0,0)--(2,0,0),red,Arrow3);
draw(Label("$y$",1),(0,-2,0)--(0,2,0),red,Arrow3);
draw(Label("$t$",1),(0,0,0)--(0,0,2.5),red,Arrow3);

real Sw = -1;
real Se =  1;
real Ss = -1;
real Sn =  1;

triple x0 = (0, 0, 0);
label("$O$",x0+(0,0,-0.1),red);

triple x1 = (Sw, Ss, 0);
triple x2 = (Se, Ss, 0);
triple x3 = (Se, Sn, 0);
triple x4 = (Sw, Sn, 0);

triple s  = (0, 0, 1.5);

triple y1 = x1 + s;
triple y2 = x2 + s;
triple y3 = x3 + s;
triple y4 = x4 + s;

label("$A$",y1+(0,0,0.1));
label("$B$",y2+(0,0,0.1));
label("$C$",y3+(0,0,0.1));
label("$D$",y4+(0,0,0.1));

draw(x1--x2,dashed);
draw(x2--x3,dashed);
draw(x3--x4,dashed);
draw(x4--x1,dashed);

pen pp = linewidth(1.5)+blue;
path3 top = y1--y2--y3--y4--cycle;
draw(surface(top),pp,surfacepen=lightgray+opacity(0.5));

draw(x1--y1,dashed);
draw(x2--y2,dashed);
draw(x3--y3,dashed);
draw(x4--y4,dashed);

draw(x0--y1,pp);
draw(x0--y2,pp);
draw(x0--y3,pp);
draw(x0--y4,pp);

path3 s1 = x0--y1--y2--cycle;
draw(surface(s1),pp,surfacepen=lightgray+opacity(0.5));
path3 s2 = x0--y2--y3--cycle;
draw(surface(s2),pp,surfacepen=lightgray+opacity(0.5));
path3 s3 = x0--y3--y4--cycle;
draw(surface(s3),pp,surfacepen=lightgray+opacity(0.5));
path3 s4 = x0--y4--y1--cycle;
draw(surface(s4),pp,surfacepen=lightgray+opacity(0.5));
