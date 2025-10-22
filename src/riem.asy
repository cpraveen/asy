size(300,0);

real xmin = -20;
real xmax = +20;
real tmax = +15;

pen axis = linewidth(0.8) + linecap(2);
draw( Label("$x$",EndPoint), (xmin,0)--(xmax,0), axis, Arrow);
draw( Label("$t$",EndPoint), (  0,0)--( 0,tmax), axis, Arrow);

real x1, y1;
real x2, y2;
real x3, y3;

x1 = -10; y1 = +10;
x2 =   5; y2 = +10;
x3 =  15; y3 = +10;

draw( Label("$\lambda_1$",EndPoint), (0,0)--(x1,y1), red );
draw( Label("$\lambda_2$",EndPoint), (0,0)--(x2,y2), red );
draw( Label("$\lambda_3$",EndPoint), (0,0)--(x3,y3), red );

label("$U_0^* = U_l$", (-10,5));
label("$U_3^* = U_r$", (+10,3));

label("$U_1^*$", (-2,7));
label("$U_2^*$", (+6,6));
