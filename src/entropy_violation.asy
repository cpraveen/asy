import graph;
size(300,0);

xaxis("$x$", -1, Arrow);
yaxis("$t$", 0, 2.5, Arrow);

real T = 2;
real dx = 0.2;
int i;
for(i=0; i<5; ++i)
{
   real x1 = i*dx;
   real x2 = x1 + T;
   draw((x1,0)--(x2,T));
   draw((-x1,0)--(-x1,T));
   draw((x1,2*x1)--(x1,T));
   draw((x1,2*x1)--(T-x1,T));
}

pen pt = linewidth(2) + red;
pen ps = linewidth(1.5);

real Te = 1.2*T;
draw(Label("$x=\frac{1}{2}t$", EndPoint), (0,0)--(0.5*Te,Te), pt);
