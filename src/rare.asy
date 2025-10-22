//Elementary solutions of Riemann problem

size(200,0);

real xmin = 0.0;
real xmax = 1.0;
real ymax = 1.0;

draw( Label("$x$", EndPoint), (0,0)--(xmax,0), Arrow );
draw( Label("$t$", EndPoint), (0,0)--(0,ymax), Arrow );

pen pthick = linewidth(2.0);
draw( Label("Tail", NE), (0,0)--(0.9*xmax,1.1*xmax), pthick );
draw( Label("Head", NE), (0,0)--(xmax,0.7*xmax), pthick );

label("$U_l$", (0.5*xmax, 0.75*xmax) );
label("$U_r$", (0.5*xmax, 0.25*xmax) );

//draw( (0.1,0.6)--(0.65,0.65), Arrow );
//draw( (0.8,0.3)--(0.65,0.65), Arrow );
