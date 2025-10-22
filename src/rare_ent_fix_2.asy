size(200,0);

real xmin = -20;
real xmax = +20;
real tmax = +15;
real dx = 12;

pen axis = linewidth(0.5) + linecap(2);
draw( Label("$x$",EndPoint), (xmin,0)--(xmax,0), axis, Arrow);
draw( Label("$t$",EndPoint), (  0,0)--( 0,tmax), axis, Arrow);

real x1, y1;
real x2, y2;
real x3, y3;
real T = 10.0;

x1 = -10; y1 = +10;
x2 =   5; y2 = +10;
x3 =  11; y3 = +10;

draw( Label("$a_l$",EndPoint), (0,0)--(x1,y1), red );
draw( Label("$a_r$",EndPoint), (0,0)--(x3,y3), red );

label("$u_l$", (-10,5));
label("$u^*$", (-2,7));
label("$u_r$", (10,5));

draw( Label("$\Delta t$",EndPoint), (xmin,T)--(xmax,T), axis);
draw( Label("$-\frac{\Delta x}{2}$",BeginPoint), (-dx,0)--(-dx,T), axis+dashed);
draw( Label("$\frac{\Delta x}{2}$",BeginPoint), ( dx,0)--( dx,T), axis+dashed);
