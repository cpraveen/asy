import graph;
size(300,0);

xaxis("$x$", -1, 2.5, Arrow);
yaxis("$u$",  0, 4.5, Arrow);

real x1 = -1;
real x2 =  1;
real x3 =  2;

pair p1 = (x1,1);
pair p2 = (0,1);
pair p3 = (x2,0);
pair p4 = (x3,0);

pen pt = linewidth(2);
pen ps = linewidth(1.5);

draw(p1--p2--p3--p4, pt);
draw((x1,2.5)--(x2,2.5)--(x2,1.5)--(x3,1.5), pt);
draw((x1,4.0)--(x3,4.0)--(x2,3.0)--(x3,3.0), pt);

draw((-1,1.5)--(2.5,1.5), Arrow);
draw((-1,3.0)--(2.5,3.0), Arrow);

label("$t=0$", (2,0.5));
label("$t=1$", (2,2.0));
label("$t=2$", (2,3.5));
