import graph;
size(300,0);

xaxis("$x$", Arrow);
yaxis("$t$", 0, 3, Arrow);

pair p1 = (1,1);
pair p2 = (2,3);

pen pt = linewidth(2) + red;
pen ps = linewidth(1.5) + blue;

draw((0,0)--p1,ps);
draw((1,0)--p1,ps);
draw(p1--p2, pt);
draw(p1--(0.25,0));
draw(p1--(0.50,0));
draw(p1--(0.75,0));

real x0(real t) { return 0.5*(t+1);}

real t1 = 1.5;
real x1 = x0(t1);

draw((x1,t1)--(x1,0));
draw((x1,t1)--(x1-t1,0));

t1 = 2.0;
x1 = x0(t1);
draw((x1,t1)--(x1,0));
draw((x1,t1)--(x1-t1,0));

t1 = 2.5;
x1 = x0(t1);
draw((x1,t1)--(x1,0));
draw((x1,t1)--(x1-t1,0));

t1 = 3.0;
x1 = x0(t1);
draw((x1,t1)--(x1,0));
draw((x1,t1)--(x1-t1,0));

draw(Label("$t=1$", EndPoint), (-1.5,1)--(2.5,1), dashed);

label("$u=1$", (-1,2));
label("$u=0$", (+2.5,2));

label("$u = \frac{1-x}{1-t}$", (0.5,-0.2), S);
draw((0.5,-0.2)--(0.7,0.2), Arrow);
