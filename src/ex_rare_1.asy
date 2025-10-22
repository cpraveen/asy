import graph;
size(300,0);

xaxis("$x$", -1, Arrow);
yaxis("$t$", 0, 2.0, Arrow);

real T = 1;
real dx = 0.2;
int i;
for(i=0; i<5; ++i)
{
   real x1 = i*dx;
   real x2 = x1 + T;
   draw((x1,0)--(x2,T));
   draw((-x1,0)--(-x1,T));
}

pen pt = linewidth(2);
pen ps = linewidth(1.5);

draw((0,0)--(1.5*T,1.5*T), pt);
draw((0,0)--(0,1.5*T), pt);

label("$u=0$", (-0.5,1.25));
label("$u=1$", (+1.5,1.25));
label("$u = ?$", (0.5,1.25));
