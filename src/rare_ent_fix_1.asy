import graph;
size(200,0);

real a = 0;
real  dx = 12.0;

real f(real x)
{
   return x/a;
}

real xmin = -20;
real xmax = +20;
real tmax = +15;

pen axis = linewidth(0.5) + linecap(2);
draw( Label("$x$",EndPoint), (xmin,0)--(xmax,0), axis, Arrow);
draw( Label("$t$",EndPoint), (  0,0)--( 0,tmax), axis, Arrow);

label("$u_l$", (-10,5));
label("$u_r$", (10,5));

real T = 10.0;
real a1 = -0.5;
real a2 = +0.8;
int n = 10;
real da = (a2-a1)/(n-1);

for(a=a1; a<=a2; a+=da)
{
   draw(graph(f,0,a*T),blue);
}

draw( Label("$\Delta t$",EndPoint), (xmin,T)--(xmax,T), axis);
draw( Label("$-\frac{\Delta x}{2}$",BeginPoint), (-dx,0)--(-dx,T), axis+dashed);
draw( Label("$\frac{\Delta x}{2}$",BeginPoint), ( dx,0)--( dx,T), axis+dashed);
