size(300,0);

real xmin = 0.0;
real xmax = 1.0;
real dy   = 0.1;
real xm   = 0.5*(xmin + xmax);

draw( (xmin,-dy)--(xmax,-dy) );
draw( (xmin,+dy)--(xmax,+dy) );

pen pthick = linewidth(2.0);
draw( Label("Diaphragm", EndPoint), (xm,-dy)--(xm,+dy), pthick );

label( "$\rho_l, u_l, p_l$", (0.5*(xmin+xm),0.0) );
label( "$\rho_r, u_r, p_r$", (0.5*(xmax+xm),0.0) );
