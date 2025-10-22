import graph;
size(200,0);

xaxis("$x$", Arrow);
yaxis("$t$", Arrow);

labelx("$O$", 0, SW);

real f(real x)
{
   return -0.25 + x*x;
}

real x1 = 0.5;
real x2 = 1;

pair p1 = (x1, f(x1));
pair p2 = (x2, f(x2));
draw(graph(f,x1,x2));
dot(p1);
dot(p2);

label("$x_0$", p1, S);
label("$(x,t)$", p2, N);
label("$\Omega$", (-0.5,0.5));
